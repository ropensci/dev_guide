rOpenSci Packages: Development, Maintenance, and Peer Review
=============================================================

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active) 
[![DOI](https://zenodo.org/badge/126815002.svg)](https://zenodo.org/badge/latestdoi/126815002)

rOpenSci's [guide for packages in our suite](https://devguide.ropensci.org/).
[Development version](https://devdevguide.netl).

## Contributing

### Suggestions and updates

This book contains our guidelines for packages contributed to [the rOpenSci suite of packages](https://ropensci.org/packages/). 
They are always a work in progress - corrections, suggestions and general improvements are welcome as [issue submissions in this repository](https://github.com/ropensci/dev_guide/issues/new). 
Open discussions are welcome in our [forum](https://discuss.ropensci.org/). 
You can also suggest changes by editing the `.Rmd` files that are at the root of this repository and submitting a pull request.  
An "edit" button in all book chapters will take you directly to the relevant page on GitHub to make such changes. 
Please target your pull requests to the `main` branch.

### Technical details

Deployment is done via [GitHub Actions](.github/workflows).
The book has a [production version](https://devguide.ropensci.org/) and a [development version](https://devdevguide.netlify.com/).
Both are updated when there are changes in their sources but also once a day to ensure the reviewers list is up to date (data pulled from Airtable).

* [prod.yml](.github/workflows/prod.yml): whenever there's a GitHub release, the book is built and its content is then pushed to the `gh-pages` branch. That branch serves ropensci.github.io/dev_guide which is redirected to https://devguide.ropensci.org/

* [scheduled-manual-main.yml](scheduled-manual-main.yml): once a day the book is built with the source from the latest release (see "Checkout latest release tag" step) and pushed to the `gh-pages` branch.

* [dev.yml](.github/workflows/dev.yml): whenever there's a push to the default branch `main`, and once a day, the book is built and its content is then pushed to the `dev-site` branch that gets [deployed to Netlify](https://devdevguide.netlify.com/).

* [pr.yml](.github/workflows/dev.yml): whenever there's a pull request to the default branch `main`, the book is built and its content is deployed via Netlify.

Refer to [this blog post for more details and resources about bookdown deployment on GitHub Actions](https://ropensci.org/blog/2020/04/07/bookdown-learnings/#5-how-to-deploy-a-preview-of-the-book-for-pull-requests).

### Notes for associate editors

If you're an associate editor, you can also push directly to `main` for small fixes. 
We shall use PRs to `main` for discussing larger updates.

If you're an associate editor and you want to render the book locally you need to install Quarto and the other dependencies stated in [DESCRIPTION](DESCRIPTION) in particular use `pak::pak("bergant/airtabler")`, and [get and store an Airtable API key following their instructions](https://github.com/bergant/airtabler#get-and-store-the-api-key) (if you're not an editor, you don't have access to our Airtable base but you can still build the book, although the Airtable info will be missing). 
Then use `babelquarto::render_book()` and the book will be generated in the `_book` folder; you can open the book by for instance running `servr::httw("_book")`.

# Meta

All of the content of this repository is licensed 
[CC-BY-SA](https://creativecommons.org/publicdomain/zero/1.0/).

You can cite this book using [its Zenodo metadata and DOI](https://doi.org/10.5281/zenodo.2553043).
