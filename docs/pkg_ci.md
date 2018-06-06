# Continuous Integration Best Practices

All rOpenSci packages must use one form of continuous integration. This ensures that all commits, pull requests, and new branches are run through `R CMD check`. 

## Which continuous integration service?

### Travis CI (Linux and Mac OSX)

Travis offers continuous integration for Linux and Mac OSX.

R is now a [natively supported language on Travis-CI](http://blog.travis-ci.com/2015-02-26-test-your-r-applications-on-travis-ci/), making it easier than ever to do continuous integration. See [R Packages](http://marker.to/NEr8Bd) and Julia Silge's [Beginner's Guide to Travis-CI for R](http://juliasilge.com/blog/Beginners-Guide-to-Travis/) for more help.

### Appveyor CI (Windows)

For continuous integration on Windows, see [R + Appveyor](https://github.com/krlmlr/r-appveyor).

R packages should have CI for all platforms when they contain:

* Compiled code

* Java dependencies

* Dependencies on other languages

* Packages with system calls

* Text munging e.g. getting people's names (in order to find encoding issues).

* Anything with file system / path calls

### Circle CI

[Circle CI](https://circleci.com/) is e.g. used by rOpenSci package [`bomrang`](https://github.com/ropensci/bomrang) as an alternative to Travis CI.

## Test coverage

Continuous integration should also include reporting of test coverage via a testing service such as [CodeCov](https://codecov.io/) or [Coveralls](https://coveralls.io/).  See the [README for the **covr** package](https://github.com/jimhester/covr) for instructions, as well
as `devtools::use_coverage()`. 

* Both test status and code coverage should be reported via a badge in your package README.

## Continuous integration setup

The `usethis` package offers a few functions for continuous integration setup, see [the docs](http://usethis.r-lib.org/reference/ci.html).
