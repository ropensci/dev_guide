## Release book version <insert version>

### Repo maintenance between releases

- [ ] Look at the issue tracker for [the dev guide](https://github.com/ropensci/dev_guide/issues) and for [software review meta](https://github.com/ropensci/software-review-meta/issues) for changes still to be made in the dev guide. Assign dev guide issues to milestones corresponding to versions, either the next one or the one after that, e.g. [version 0.3.0](https://github.com/ropensci/dev_guide/milestone/2). Encourage PRs, have them reviewed.

### 1 month prior to release

- [ ] Remind editors to open issues/PRs for items they want to see in the next version.

- [ ] Ask editors for any feedback you need from them before release.

- [ ] For each contribution/change make sure the NEWS in Appendix.Rmd were updated.

- [ ] Plan a date for release in communication with `@stefaniebutland` who will give you a date for publishing a blog post / tech note.

- [ ] Draft a blog post / tech note about the release with enough advance for Stef to review it (1.5 weeks). [Example](https://github.com/ropensci/roweb2/pull/452), [General blog post instructions](https://github.com/ropensci/roweb2#contributing-a-blog-post). The editor writing the post is first author, other authors are listed by alphabetical order.

### Release


- [ ] Check URLs using [the corresponding script](https://github.com/ropensci/dev_guide/blob/master/inst/book_grooming.R).

- [ ] [Spell check](https://github.com/ropensci/dev_guide/blob/master/inst/spelling-check.R). Update the [WORDLIST](https://github.com/ropensci/dev_guide/blob/master/inst/WORDLIST) as necessary.

- [ ] Make a PR from the dev branch to the master branch, squash and merge it.

- [ ] Finish your blog post / tech note PR. Underline the most important aspects to be highlighted in tweets as part of the PR discussion.
