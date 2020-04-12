rOpenSci Packages: Development, Maintenance, and Peer Review
=============================================================

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active) 
[![Build Status](https://travis-ci.org/ropensci/dev_guide.svg?branch=master)](https://travis-ci.org/ropensci/dev_guide)
[![DOI](https://zenodo.org/badge/126815002.svg)](https://zenodo.org/badge/latestdoi/126815002)

rOpenSci's guide for packages in our suite. [Read it here](https://devguide.ropensci.org/).

## Contributing

### Suggestions and updates

This book contains our guidelines for packages contributed to [the rOpenSci suite of packages](https://ropensci.org/packages/). They are always a work in progress - corrections, suggestions and general improvements are welcome as [issue submissions in this repository](https://github.com/ropensci/dev_guide/issues/new). Open discussions are welcome in our [forum](https://discuss.ropensci.org/). You can also suggest changes by editing the `.Rmd` files that are at the root of this repository and submitting a pull request.  An "edit" button at the top of all book chapters will take you directly to the relevant page on GitHub to make such changes. Please target your pull requests to the `dev` branch.

### Technical details

Deployment is done via Travis CI using the rOpenSci [`tic`](https://github.com/ropenscilabs/tic) and [`travis`](https://github.com/ropenscilabs/travis) packages: 

* whenever there's a push to `master`, the book is built on Travis to a `_book` folder whose content is then pushed from Travis to the `gh-pages` branch.

* whenever there's a push to `dev`, the book is built on Travis to a `_book` folder whose content is then pushed from Travis to the `dev-site` branch that gets [deployed to Netlify](https://devdevguide.netlify.com/).

We copied this [setup from Data Carpentry](https://github.com/datacarpentry/R-ecology-lesson/).

### Notes for associate editors

If you're an associate editor, you can also push directly to `master` for small fixes. We shall use PRs to `dev` for discussing larger updates, and PR from `dev` to `master` for each release.

If you're an associate editor and you want to render the book locally you need to install `bookdown` and the other dependencies stated in [DESCRIPTION](DESCRIPTION) in particular use `devtools::install_github("bergant/airtabler")`, and [get and store an Airtable API key following their instructions](https://github.com/bergant/airtabler#get-and-store-the-api-key) (if you're not an editor, you don't have access to our Airtable base). Then use `bookdown::render_book('index.Rmd', 'bookdown::gitbook')` and the book will be generated in the `_book` folder; you can open the book on the command line by doing `open _book/index.html`.

# Meta

This book was started using [Sean Kross](https://github.com/seankross)' [minimal bookdown example](https://github.com/seankross/bookdown-start).

All of the content of this repository is licensed 
[CC-BY-SA](https://creativecommons.org/publicdomain/zero/1.0/).

You can cite this book using [its Zenodo metadata and DOI](https://doi.org/10.5281/zenodo.2553043).

