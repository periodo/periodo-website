--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import Control.Applicative ()
import Control.Monad (void)
import Data.Monoid ()
import System.FilePath (takeBaseName, takeDirectory, (</>))
import Text.Pandoc
import Text.Parsec
import Text.Parsec.String
import Hakyll

--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do

  -- copy index.html to build directory (only for GH pages)
  match "index.html" $ do
    route   idRoute
    compile copyFileCompiler

  -- copy CNAME file to build directory
  match "CNAME" $ do
    route   idRoute
    compile copyFileCompiler

  -- copy image files to build directory
  match "images/*" $ do
    route   idRoute
    compile copyFileCompiler

  -- copy PDF files to build directory
  match "pdfs/*" $ do
    route   idRoute
    compile copyFileCompiler

  -- compress CSS files
  match "css/*" $ do
    route   idRoute
    compile compressCssCompiler

  -- compile citation files
  match "*.bib" $ compile $ biblioCompiler
  match "*.csl" $ compile $ cslCompiler

  -- compile templates
  match "templates/*" $ compile templateCompiler

  -- compile TOCs for pages that have multiple sections
  match (fromList ["motivation.md", -- en
                   "motivacion.md", -- es
                   "technical-overview.md", -- en
                   "resumen-tecnico.md",    -- es
                   "notes/getting-into-shapes-with-shacl.md",
                   "2016-workshop.md", "2017-workshop.md"]) $ version "toc" $
    compile $ pandocCompilerWith defaultHakyllReaderOptions
                                 defaultHakyllWriterOptions {
                                   writerTableOfContents = True
                                 , writerTemplate = Just (
                                     -- all this insanity to turn a string
                                     -- literal into a pandoc Template...
                                     either error id $
                                       either (error . show) id $
                                       Text.Pandoc.runPure $
                                       Text.Pandoc.runWithDefaultPartials $
                                       Text.Pandoc.compileTemplate "" "$toc$"
                                     )
                                 }

  -- compile English pages with citations (optional) and TOCs
  match (fromList ["motivation.md",
                   "publications.md",
                   "technical-overview.md",
                   "notes/getting-into-shapes-with-shacl.md",
                   "2016-workshop.md", "2017-workshop.md"]) $ do
    route   $ niceRoute
    compile $ citeCompiler >>= enPageCompiler tocCtx

  -- compile Spanish pages with citations (optional) and TOCs
  match (fromList ["motivacion.md",
                   "resumen-tecnico.md"]) $ do
    route   $ niceRoute
    compile $ citeCompiler >>= esPageCompiler tocCtx

  -- compile other pages
  match "*.md" $ do
    route   $ niceRoute
    compile $ pandocCompiler >>= enPageCompiler defaultContext

  -- compile guide articles
  match "guide/*.md" $  compile pandocCompiler

  -- generate guide page from guide sections
  create ["guide/index.html"] $ do
    route idRoute
    compile $ do
      sections <- loadAll "guide/*.md"
      let indexCtx =
            listField  "sections" defaultContext (return sections) `mappend`
            mconcat [ constField "title" "Guide to using PeriodO"
                    , constField "guide"  "true"
                    ]                                              `mappend`
            defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/guide.html" indexCtx
        >>= enPageCompiler indexCtx

  -- compile index sections in English and Spanish
  match "index-sections-en/*" $ compile pandocCompiler
  match "index-sections-es/*" $ compile pandocCompiler

  -- generate English index page from index sections
  create ["en/index.html"] $ do
    route idRoute
    compile $ do
      sections <- loadAll "index-sections-en/*"
      let indexCtx =
            listField  "sections" defaultContext (return sections) `mappend`
            mconcat [ constField "title" "Periods, Organized"
                    , constField "home"  "true"
                    ]                                              `mappend`
            defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/index-en.html" indexCtx
        >>= enPageCompiler indexCtx

  -- generate Spanish index page from index sections
  create ["es/index.html"] $ do
    route idRoute
    compile $ do
      sections <- loadAll "index-sections-es/*"
      let indexCtx =
            listField  "sections" defaultContext (return sections) `mappend`
            mconcat [ constField "title" "Periodos, Organizados"
                    , constField "home"  "true"
                    ]                                              `mappend`
            defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/index-es.html" indexCtx
        >>= esPageCompiler indexCtx

  -- redirects of legacy URLs
  create ["data-model/index.html"] $ do
    route idRoute
    compile $ do
      let ctx =
            mconcat [ constField "title" "Data Model"
                    , constField "location"  "/technical-overview/#periods"
                    ] `mappend`
            defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/redirect.html" ctx
  create ["old-guide/index.html"] $ do
    route idRoute
    compile $ do
      let ctx =
            mconcat [ constField "title" "Guide to using PeriodO"
                    , constField "location"  "/guide/"
                    ] `mappend`
            defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/redirect.html" ctx


-- utilities -------------------------------------------------------------------

-- standard English page compiler
enPageCompiler :: Context String -> Item String -> Compiler (Item String)
enPageCompiler ctx item =
    loadAndApplyTemplate "templates/default-en.html" ctx item
    >>= applyKeywords
    >>= relativizeUrls

-- standard Spanish page compiler
esPageCompiler :: Context String -> Item String -> Compiler (Item String)
esPageCompiler ctx item =
    loadAndApplyTemplate "templates/default-es.html" ctx item
    >>= applyKeywords
    >>= relativizeUrls

-- compiler for Markdown files with citations
citeCompiler :: Compiler (Item String)
citeCompiler = do
  csl <- load "chicago-author-date.csl"
  bib <- load "refs.bib"
  getResourceBody
    >>= readPandocBiblio defaultHakyllReaderOptions csl bib
    >>= return . writePandoc

-- template context with a TOC variable
tocCtx :: Context String
tocCtx = mconcat [ field "toc" $ \item ->
                    loadBody ((itemIdentifier item) {
                                 identifierVersion = Just "toc" })
                 , defaultContext
                 ]

-- replace a foo/bar.md by foo/bar/index.html
-- this way the url looks like: foo/bar in most browsers
niceRoute :: Routes
niceRoute = customRoute createIndexRoute
  where
    createIndexRoute ident =
      takeDirectory p </> takeBaseName p </> "index.html"
      where p=toFilePath ident

-- SVG keyword -----------------------------------------------------------------
-- based on https://xinitrc.de/2013/06/22/3.26-Lightyears-away.html

-- parsing

newtype Keywords = Keywords
    { unKeyword :: [KeywordElement]
    } deriving (Show, Eq)

data KeywordElement
    = Chunk String
    | SVG String String String
    deriving (Show, Eq)

readKeywords :: String -> Keywords
readKeywords input = case parse keywords "" input of
  Left err -> error $ "Cannot parse keywords: " ++ show err
  Right t -> t

keywords :: Parser Keywords
keywords = Keywords <$> many1 (chunk <|> svg)

chunk :: Parser KeywordElement
chunk = Chunk <$> many1 (noneOf "§")

svg :: Parser KeywordElement
svg = try $ do
  void $ string "§svg("
  cls <- many1 $ noneOf ","
  void $ string ", "
  alt <- many1 $ noneOf ","
  void $ string ", "
  file <-many1 $ noneOf ")"
  void $ string ")§"
  return $ SVG cls alt file

-- compiling

applyKeywords :: Item String -> Compiler (Item String)
applyKeywords item = do
  body <- applyKeywords' $ readKeywords $ itemBody item
  return $ itemSetBody body item

applyKeywords' :: Keywords -> Compiler String
applyKeywords' kws = do
  items <- mapM applyKWs $ unKeyword kws
  return $ concatMap itemBody items
    where
      applyKWs (Chunk c) = makeItem c
      applyKWs (SVG cls alt file) = svgCompiler cls alt file

svgCompiler :: String -> String -> String -> Compiler (Item String)
empty :: String
empty = ""
svgCompiler cls alt file =
  makeItem empty >>= loadAndApplyTemplate "templates/svg.html" (
  mconcat [ constField "cls" cls
          , constField "alt" alt
          , constField "file" file
          ])
