This is the website for the PeriodO project, built using
[Hakyll](http://jaspervdj.be/hakyll/) and intended to be hosted on
Github Pages.

Most of the content is in Markdown files (the ones with the `.md`
suffix).

To build the site locally, install [the Haskell
platform](http://www.haskell.org/platform/) and [install
Hakyll](http://jaspervdj.be/hakyll/tutorials/01-installation.html),
then:

```
$ ghc --make site.hs
$ ./site build
$ ./site watch
```

Then open <http://localhost:8000>.
