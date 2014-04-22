--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import Data.Monoid (mappend, mconcat)
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
    route   $ setExtension "html"
    compile $ citeCompiler >>= pageCompiler tocCtx

  -- compile index sections
  match "index-sections/*" $ compile pandocCompiler

  -- generate index page from index sections
  create ["index.html"] $ do
    route idRoute
    compile $ do
      sections <- loadAll "index-sections/*"
      let indexCtx =
            listField "sections" defaultContext (return sections) `mappend`
            constField "title" "Periods, Organized"               `mappend`
            defaultContext

      makeItem ""
        >>= loadAndApplyTemplate "templates/index.html" indexCtx
        >>= pageCompiler indexCtx


--------------------------------------------------------------------------------
pageCompiler :: Context String -> Item String -> Compiler (Item String)
pageCompiler ctx item =
  loadAndApplyTemplate "templates/default.html" ctx item
  >>= relativizeUrls

citeCompiler :: Compiler (Item String)
citeCompiler = do
  csl <- load "chicago-author-date.csl"
  bib <- load "refs.bib"
  getResourceBody
    >>= readPandocBiblio defaultHakyllReaderOptions csl bib
    >>= return . writePandoc

tocCtx :: Context String
tocCtx = mconcat [ field "toc" $ \item ->
                    loadBody ((itemIdentifier item) { identifierVersion = Just "toc" })
                 , defaultContext
                 ]

