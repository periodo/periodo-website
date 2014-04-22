--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import Data.Monoid (mappend, mconcat)
import System.FilePath.Posix (takeBaseName, takeDirectory, (</>))
import Text.Pandoc.Options
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

  -- compile pages with TOCs
  match "narrative.md" $ version "toc" $
    compile $ pandocCompilerWith defaultHakyllReaderOptions
                                 defaultHakyllWriterOptions {
                                   writerTableOfContents = True
                                 , writerTemplate = "$toc$"
                                 , writerStandalone = True
                                 }

  -- compile pages with citations
  match "narrative.md" $ do
    route   $ niceRoute
    compile $ citeCompiler >>= pageCompiler tocCtx

  -- compile other pages
  match "*.md" $ do
    route   $ niceRoute
    compile $
      pandocCompiler
      -- pandocCompilerWith defaultHakyllReaderOptions
      --                    defaultHakyllWriterOptions {
      --                      writerEmailObfuscation = NoObfuscation }
      >>= pageCompiler defaultContext

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


--------------------------------------------------------------------------------
-- standard page compiler
pageCompiler :: Context String -> Item String -> Compiler (Item String)
pageCompiler ctx item =
  loadAndApplyTemplate "templates/default.html" ctx item
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
                    loadBody ((itemIdentifier item) { identifierVersion = Just "toc" })
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
