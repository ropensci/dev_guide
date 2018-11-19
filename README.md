rOpenSci Packages: Development, Maintenance, and Peer Review
=============================================================

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active) [![Build Status](https://travis-ci.org/ropensci/dev_guide.svg?branch=master)](https://travis-ci.org/ropensci/dev_guide)

Source of the extended version of the onboarding packaging guide. [Read it here](https://ropensci.github.io/dev_guide/).

## Contributing

### Suggestions and updates

These guidelines are a work in progress for packages contributed to [the rOpenSci suite of packages](https://ropensci.org/packages/). Corrections, suggestions and general improvements are welcome as [issue submissions in this repository](https://github.com/ropensci/dev_guide/issues/new). Open discussions are welcome in our [forum](https://discuss.ropensci.org/). You can also make a pull request for typos, please edit the .Rmd files that are at the root of this repository. The book will be built and automatically deployed when your PR is merged.

### Technical details

Deployment is done via Travis CI using the rOpenSci [`tic`](https://github.com/ropenscilabs/tic) and [`travis`](https://github.com/ropenscilabs/travis) packages: 

* whenever there's a push to master, the book is built on Travis to a _book folder whose content is then pushed from Travis to the gh-pages branch.

* whenever there's a push to dev, the book is built on Travis to a _book folder whose content is then pushed from Travis to the dev-site branch that gets deployed to Netlify at [this address](https://devdevguide.netlify.com/).

We copied this setup from [this Data Carpentry repo](https://github.com/datacarpentry/R-ecology-lesson).

### Notes for associate editors

If you're an associate editor, you can also push directly to master for small fixes. We shall use PRs to dev for discussing larger updates, and PR from dev to master for each release.

If you're an associate editor and you want to render the book locally you need to install `bookdown` and the other dependencies stated in [DESCRIPTION](DESCRIPTION) in particular use `devtools::install_github("bergant/airtabler")`, and get and store an Airtable API key following [there instructions](https://github.com/bergant/airtabler#get-and-store-the-api-key) (if you're not an editor, you don't have access to our Airtable base). Then use `bookdown::render_book('index.Rmd', 'bookdown::gitbook')` and the book will be generated in an _output folder.

# Meta

This bookdown was started using [Sean Kross](https://github.com/seankross)' minimal bookdown example that you can find [here](https://github.com/seankross/bookdown-start).

All of the content of this repository is licensed 
[CC-BY-SA](https://creativecommons.org/publicdomain/zero/1.0/).

