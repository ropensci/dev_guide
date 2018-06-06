# Releasing a package {#releasing}

## News file

* It is mandatory to use a `NEWS` or `NEWS.md` file in the root of your package.
See the sample [NEWS file](news_template.md)
* Update the news file before every CRAN release, with a section with the package name,
version and date of release, like:

```
foobar 0.2.0 (2016-04-01)
=========================
```

* Under that header, put in sections as needed, including: `NEW FEATURES`, `MINOR IMPROVEMENTS`,
`BUG FIXES`, `DEPRECATED AND DEFUNCT`. Under each header list items as needed. For each item give
a description of the new feature, improvement, bug fix, or deprecated function/feature. Link
to any related GitHub issue like `(#12)`. The `(#12)` will resolve on GitHub in Releases to a
link to that issue in the repo.
* After you have added a `git tag` and pushed up to GitHub, add the news items for that
tagged version to a Release on the Releases tab in your GitHub repo with a title like
`pkgname v0.1.0`
* If you use `NEWS`, add it to `.Rbuildignore`, but not if you use `NEWS.md`

## Versioning

* We strongly recommend that rOpenSci packages use semantic versioning. A detailed explanation is available on the [description chapter](http://r-pkgs.had.co.nz/description.html#version).

* Git tag each release after every submission to CRAN. [[more info](http://marker.to/ZYd3kZ)]
