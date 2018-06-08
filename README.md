This is the website for the PeriodO project, built using
[Hakyll](http://jaspervdj.be/hakyll/) and intended to be hosted on
Github Pages.

Most of the content is in Markdown files (the ones with the `.md`
suffix).

The site is re-built automatically when any of the source files
change, so you shouldn't need to build it locally. Just use GitHub to
edit and commit your files.

<!--
Currently the status of the automatic build is [![Circle CI](https://circleci.com/gh/periodo/periodo-website/tree/source.svg?style=svg&circle-token=d84bd91e89ed051d844b4d8e679830155aec81cf)](https://circleci.com/gh/periodo/periodo-website/tree/source)
-->

But if you want to build the site locally, install [stack](https://www.stackage.org), run `stack setup` and then:

```
$ stack build
$ stack exec site watch
```

Then open <http://127.0.0.1:8000>.
