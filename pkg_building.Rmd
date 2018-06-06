#  (PART) Building Your Package {-}

# Packaging Guide {#building}

rOpenSci accepts packages that meet our guidelines via a streamlined [onboarding process](https://github.com/ropensci/onboarding). To ensure a consistent style across all of our tools we have developed this concise guide. We strongly recommend that package developers read Hadley Wickham's concise but thorough book on package development which is available for [free online](http://r-pkgs.had.co.nz/) (and [print](http://amzn.com/1491910593?tag=r-pkgs-20)).

## Package naming

* We strongly recommend short, descriptive names in lower case. If your package deals with one or more commercial services, please make sure the name does not violate branding guidelines. You can check if your package name is available, informative and not offensive by using the [`available` package](https://github.com/ropenscilabs/available).

## Function/variable naming & general syntax

* We strongly recommend `snake_case` over all other styles unless you are porting over a package that is already in wide use.

* Avoid function name conflicts with base packages or other popular ones (e.g. `ggplot2`, `dplyr`, `magrittr`, `data.table`)

* Consider an `object_verb()` naming scheme for functions in your package that take a common data type or interact with a common API. `object` refers to the data/API and `verb` the primary action.  This scheme helps avoid namespace conflicts with packages that may have similar verbs, and makes code readable and easy to auto-complete.  For instance, in **stringi**, functions starting with `stri_` manipulate strings (`stri_join()`, `stri_sort()`, and in **googlesheets** functions starting with `gs_` are calls to the Google Sheets API (`gs_auth()`, `gs_user()`, `gs_download()`).

* For functions that manipulate an object/data and return an object/data of the same type, make the object/data the first argument of the function so as to enhance compatibility with the pipe operator (`%>%`)

* For more information on how to style your code, name functions, and R scripts inside the `R/` folder, we recommend reading the [code chapter in Hadley's book](http://r-pkgs.had.co.nz/r.html).

## README

* All packages should have a README file, named `README.md`, in the root of the repository. The README should include, from top to bottom (see [this example](https://github.com/karthik/badge-test/)):

```
* The package name
* Badges for continuous integration and test coverage, the badge for rOpenSci peer-review once it has started (see below), a repostatus.org badge, and any other badges
* Short description of the package
* Installation instructions
* Brief demonstration usage
* If applicable, how the package compares to other similar packages and/or how it relates to other packages
* Citation information
```

* Once you have submitted a package and it has passed editor checks, add a peer-review badge via

```
[![](https://badges.ropensci.org/<issue_id>_status.svg)](https://github.com/ropensci/onboarding/issues/<issue_id>)
```

where issue_id is the number of the issue in the onboarding repository. For instance, the badge for [`rtimicropem`](https://github.com/ropensci/rtimicropem) review uses the number 126 since it's the [review issue number](https://github.com/ropensci/onboarding/issues/126). The badge will first indicated "under review" and then "peer-reviewed" once your package has been onboarded (issue labelled "approved" and closed), and will link to the review issue.

* If your package connects to a data source or online service, or wraps other software, consider that your package README may be the first point of entry for users.  It should provide enough information for users to understand the nature of the data, service, or software, and provide links to other relevant data and documentation.  For instance,
a README should not merely read, "Provides access to GooberDB," but also include,
"..., an online repository of Goober sightings in South America.  More
information about GooberDB, and documentation of database structure and metadata
can be found at *link*.

* We recommend not creating `README.md` directly, but from a `README.Rmd` file (an Rmarkdown file) if you have any demonstration code. The advantage of the `.Rmd` file is you can combine text with code that can be easily updated whenever your package is updated.

* Extensive examples should be kept for a vignette. If you want to make the vignettes more accessible before installing the package, we suggest creating a website for your package with [`pkgdown`](https://github.com/hadley/pkgdown). [Here](http://enpiar.com/2017/11/21/getting-down-with-pkgdown/) is a good tutorial to get started with `pkgdown`.

* Consider using `devtools::use_readme_rmd()` to get a template for a `README.Rmd` file and to automatically set up a pre-commit hook to ensure that `README.md` is always newer than `README.Rmd`.

* _After_ a package is accepted, the rOpenSci footer should be added to the bottom of the README file with the following markdown line:

```
[![ropensci_footer](http://ropensci.org/public_images/github_footer.png)](http://ropensci.org)
```

* See the [gistr README](https://github.com/ropensci/gistr#gistr) for a good example README to follow.


## Documentation

* All exported package functions should be fully documented with examples.

* All functions should document the type of object returned under the `@return` heading.

* The package should contain top-level documentation for `?foobar`, (or
`?foobar-package` if there is a naming conflict). Optionally, you can use
	both `?foobar` and `?foobar-package` for the package level manual file,
	using `@aliases` roxygen tag.

* The package should contain at least one vignette providing an introduction to the primary package functions and use cases.

* As is the case for a README, top-level documentation or vignettes may
be the first point of entry for users. If your package connects to a data source or online service, or wraps other software, it should provide enough information for users to understand the nature of the data, service, or software, and provide links to other relevant data and documentation.  For instance,
a the vignette intro or documentation should not merely read, "Provides access to GooberDB," but also include,
"..., an online repository of Goober sightings in South America.  More
information about GooberDB, and documentation of database structure and metadata can be found at *link*.

* We request all submissions to use `roxygen2` for documentation.  `roxygen2` is [an R package](http://cran.r-project.org/web/packages/roxygen2/index.html) that automatically compiles `.Rd` files to your `man` folder in your package from simple tags written above each function.

* More information on using roxygen2 [documentation](http://r-pkgs.had.co.nz/man.html) is available in the R packages book.

* One key advantage of using `roxygen2` is that your `NAMESPACE` will always be automatically generated and up to date.

* When using `roxygen2`, add `#' @noRd` to internal functions.


## Authorship

The `DESCRIPTION` file of a package should list package authors and contributors to a package, using the `Authors@R` syntax to indicate their roles (author/creator/contributor etc.) if there is more than one author. See [this section of "Writing R Extensions"](https://cran.rstudio.com/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file) for details.  If you feel that your reviewers have made a substantial contribution to the development of your package, you may list them in the `Authors@R` field with a Reviewer contributor type (`"rev"`), like so:

```
    person("Bea", "Hernández", role = "rev",
    comment = "Bea reviewed the package for ropensci, see <https://github.com/ropensci/onboarding/issues/116>"),
```

Only include reviewers after asking for their consent.  Note that 'rev' will raise a CRAN NOTE unless the package is built using R v3.5 (r-devel as of 2017-09-21).

Please do not list editors as contributors. Your participation in and contribution to rOpenSci is thanks enough!

## Testing

* All packages should pass `R CMD check`/`devtools::check()` on all major platforms.

* All packages should have a test suite that covers major functionality of the package.

* We recommend using `testthat` for writing tests. Strive to write tests as you write each new function. This serves the obvious need to have proper testing for the package, but allows you to think about various ways in which a function can fail, and to _defensively_ code against those. [More information](http://r-pkgs.had.co.nz/tests.html).

* `testthat` has a function `skip_on_cran()` that you can use to not run tests on CRAN. We recommend using this on all functions that are API calls since they are quite likely to fail on CRAN. These tests will still run on Travis.

* Even if you use [continuous integration](#ci), we recommend that you run tests locally prior to submitting your package, as some tests are often skipped. (You may need to set `Sys.setenv(NOT_CRAN="true")` in order to ensure all tests are run.) In addition, we recommend that prior to submitting your package, you use MangTheCat's [**goodpractice**](https://github.com/MangoTheCat/goodpractice/) package to check your package for likely sources of errors, and run `devtools::spell_check()` to find spelling errors in documentation.

## Examples

* Include extensive examples in the documentation. In addition to demonstrating how to use the package, these can act as an easy way to test package functionality before there are proper tests. However, keep in mind we require tests in contributed packages. If you prefer not to clutter up code with extensive documentation, place further documentation/examples in files in a `man-roxygen` folder in the root of your package, and those will be combined into the manual file by the use of `@template <file name>`, for example. You can run examples with `devtools::run_examples()`.


## Package dependencies

* Use `Imports` instead of `Depends` for packages providing functions from other packages. Make sure to list packages used for testing (`testthat`), and documentation (`knitr`, `roxygen2`) in your `Suggests` section of package dependencies. If you use any packages in your examples sections, make sure to list those, if not already listed elsewhere, in `Enhances` section of package dependencies.

* For most cases where you must expose functions from dependencies to the user, you should import and re-export those individual functions rather than listing them in the `Depends` fields.  For instance, if functions in your package produce `raster` objects, you might re-export only printing and plotting functions from the **raster** package.

## Recommended scaffolding

* For http requests we strongly recommend using `httr` over `RCurl`.

* For parsing JSON, use `jsonlite` instead of `rjson` or `RJSONIO`.

* For parsing, creating, and manipulating XML, we strongly recommend `xml2` for most cases.

## Console messages

* Use `message()` and `warning()` to communicate with the user in your functions. Please do not use `print()` or `cat()` unless it's for a `print.*()` method, as these methods of printing messages are harder for the user to suppress.

##  Miscellaneous CRAN gotchas

This is a collection of CRAN gotchas that are worth avoiding at the outset.

* Make sure your package title is in Title Case.
* Do not put a period on the end of your title
* Avoid starting the description with the package name or This package ...
* Make sure you include links to websites if you wrap a web API, scrape data from a site, etc. in the `Description` field of your `DESCRIPTION` file
* Avoid long running tests and examples.  Consider `testthat::skip_on_cran` in tests to skip things that take a long time but still test them locally and on Travis.
* Include top-level files such as `paper.md`, `.travis.yml` in your `.Rbuildignore` file.

## Further guidance

* Hadley Wickham's _R Packages_ is an excellent, readable resource on package development which is available for [free online](http://r-pkgs.had.co.nz/) (and [print](http://amzn.com/1491910593?tag=r-pkgs-20)).

* [Writing R Extensions](https://cran.r-project.org/doc/manuals/r-release/R-exts.html) is the canonical, usually most up-to-date, reference for creating R packages.

* If you are submitting a package to rOpenSci via the [onboarding repo](https://github.com/ropensci/onboarding), you can direct further questions to the rOpenSci team in the issue tracker, or in our [discussion forum](https://discuss.ropensci.org/).

