# Continuous Integration Best Practices

Now I wonder if this is the best place since after onboarding things move.
 :thinking_face: That said the transfer will be part of the author guide.

## Continuous integration

* All rOpenSci packages must use one form of continuous integration. This ensures that all commits, pull requests, and new branches are run through `R CMD check`. R is now a [natively supported language on Travis-CI](http://blog.travis-ci.com/2015-02-26-test-your-r-applications-on-travis-ci/), making it easier than ever to do continuous integration. See [R Packages](http://marker.to/NEr8Bd) and Julia Silge's [Beginner's Guide to Travis-CI for R](http://juliasilge.com/blog/Beginners-Guide-to-Travis/) for more help. Travis offers continuous integration for Linux and Mac OSX. For continuous integration on Windows, see [R + Appveyor](https://github.com/krlmlr/r-appveyor). R packages that use compiled code or link
to other libraries or languages should have CI for all platforms.

* R packages that use compiled code or link to other libraries or languages should have CI for all platforms.

* Continuous integration should also include reporting of test coverage via
a testing service such as [CodeCov](https://codecov.io/) or [Coveralls](https://coveralls.io/).  See the [README for the **covr** package](https://github.com/jimhester/covr) for instructions, as well
as `devtools::use_coverage()`. 

* Both test status and code coverage should be reported via a badge in your
package README.
