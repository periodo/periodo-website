--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import Control.Applicative ((<$>))
import Control.Monad (void)
import Data.Monoid (mappend, mconcat)
import System.FilePath (takeBaseName, takeDirectory, (</>))
import Text.Pandoc.Options
import Text.Parsec
import Text.Parsec.String
import Hakyll

--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do

  -- copy CNAME file to build directory
  match "CNAME" $ do
    route   idRoute
    compile copyFileCompiler

  -- copy image files to build directory
  match "images/*" $ do
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
  match (fromList ["motivation.md",
                   "data-model.md",
                   "technical-overview.md"]) $ version "toc" $
    compile $ pandocCompilerWith defaultHakyllReaderOptions
                                 defaultHakyllWriterOptions {
                                   writerTableOfContents = True
                                 , writerTemplate = "$toc$"
                                 , writerStandalone = True
                                 }

  -- compile pages with citations (optional) and TOCs
  match (fromList ["motivation.md",
                   "data-model.md",
                   "publications.md",
                   "technical-overview.md"]) $ do
    route   $ niceRoute
    compile $ citeCompiler >>= pageCompiler tocCtx

  -- compile other pages
  match "*.md" $ do
    route   $ niceRoute
    compile $ pandocCompiler >>= pageCompiler defaultContext

  -- compile index sections
  match "index-sections/*" $ compile pandocCompiler

  -- generate index page from index sections
  create ["index.html"] $ do
    route idRoute
    compile $ do
      sections <- loadAll "index-sections/*"
      let indexCtx =
            listField  "sections" defaultContext (return sections) `mappend`
            mconcat [ constField "title" "Periods, Organized"
                    , constField "home"  "true"
                    ]                                              `mappend`
            defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/index.html" indexCtx
        >>= pageCompiler indexCtx


-- utilities -------------------------------------------------------------------

-- standard page compiler
pageCompiler :: Context String -> Item String -> Compiler (Item String)
pageCompiler ctx item =
    loadAndApplyTemplate "templates/default.html" ctx item
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
svgCompiler cls alt file = makeItem "" >>= loadAndApplyTemplate "templates/svg.html" (
  mconcat [ constField "cls" cls
          , constField "alt" alt
          , constField "file" file
          ])
