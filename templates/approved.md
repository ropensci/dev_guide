Approved! Thanks <author(s) GitHub username(s)> for submitting and <reviewers' GithHub usernames> for your reviews! <optional: smiling cat emoji à la Scott>

To-dos:
- [ ] Transfer the repo to rOpenSci's "ropensci" GitHub organization under "Settings" in your repo.  I have invited you to a team that should allow you to do so.  You'll be made admin once you do.
- [ ] Add the rOpenSci footer to the bottom of your README
"```
[![ropensci_footer](https://ropensci.org/public_images/ropensci_footer.png)](https://ropensci.org)```"
- [ ] Fix any links in badges for CI and coverage to point to the ropensci URL. We no longer transfer Appveyor projects to ropensci Appveyor account so after transfer of your repo to rOpenSci's "ropensci" GitHub organization the badge should be `[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/ropensci/pkgname?branch=master&svg=true)](https://ci.appveyor.com/project/individualaccount/pkgname)`.
- [ ] We're starting to roll out software metadata files to all ropensci packages via the Codemeta initiative, see https://github.com/ropensci/codemetar/#codemetar for how to include it in your package, after installing the package - should be easy as running codemetar::write_codemeta() in the root of your package.
<IF JOSS>
- [ ] Activate Zenodo watching the repo
- [ ] Tag and create a release so as to create a Zenodo version and DOI
- [ ] Submit to JOSS using the Zenodo DOI.  We will tag it for expedited review.
<IF JOSS/>

Should you want to acknowledge your reviewers in your package DESCRIPTION, you can do so by making them `"rev"`-type contributors in the `Authors@R` field (with their consent).  More info on this [here](https://devguide.ropensci.org/building.html#authorship).

Welcome aboard! We'd love to host a blog post about your package - either a [short introduction to it with one example](https://ropensci.org/tech-notes/) or [a longer post with some narrative about its development or something you learned, and an example of its use](https://ropensci.org/blog/). If you are interested, review [the instructions](https://github.com/ropensci/roweb2#contributing-a-blog-post), and tag @stefaniebutland in your reply. She will get in touch about timing and can answer any questions.

We've put together an online book with our best practice and tips, [this chapter](https://devguide.ropensci.org/collaboration.html) starts the 3d section that's about guidance for after onboarding. Please tell us what could be improved, the corresponding repo is [here](https://github.com/ropensci/dev_guide).
