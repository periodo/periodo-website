This is the website for the PeriodO project, built using
[Hakyll](http://jaspervdj.be/hakyll/) and intended to be hosted on
Github Pages.

Most of the content is in Markdown files (the ones with the `.md`
suffix).

The site is re-built automatically when any of the source files
change, so you shouldn't need to build it locally. Just use GitHub to
edit and commit your files.

Currently the automatic build is [![Build
Status](https://travis-ci.org/periodo/periodo.github.io.svg?branch=source)](https://travis-ci.org/periodo/periodo.github.io)

But if you want to build the site locally, install [the Haskell
platform](http://www.haskell.org/platform/) and [install
Hakyll](http://jaspervdj.be/hakyll/tutorials/01-installation.html),
then:

```
$ ghc --make site.hs
$ ./site build
$ ./site watch
```

Then open <http://localhost:8000>.
