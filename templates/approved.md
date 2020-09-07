Approved! Thanks <author(s) GitHub username(s)> for submitting and <reviewers' GitHub usernames> for your reviews! <optional: smiling cat emoji à la Scott>

To-dos:
- [ ] Transfer the repo to rOpenSci's "ropensci" GitHub organization under "Settings" in your repo.  I have invited you to a team that should allow you to do so.  You'll be made admin once you do.
- [ ] Fix all links to the GitHub repo to point to the repo under the ropensci organization.
- [ ] If you already had a `pkgdown` website **and are ok relying only on [rOpenSci central docs building and branding](https://devguide.ropensci.org/ci.html#even-more-ci-ropensci-docs)**,
    * deactivate the automatic deployment you might have set up
    * remove styling tweaks from your pkgdown config but keep that config file
    * replace the whole current `pkgdown` website with a [redirecting page](https://devguide.ropensci.org/redirect.html)
    * replace your package docs URL with `https://docs.ropensci.org/package_name`
    * In addition, in your DESCRIPTION file, include the docs link in the `URL` field alongside the link to the GitHub repository, e.g.: `URL: https://docs.ropensci.org/foobar (website) https://github.com/ropensci/foobar`
- [ ] Fix any links in badges for CI and coverage to point to the ropensci URL. We no longer transfer Appveyor projects to ropensci Appveyor account so after transfer of your repo to rOpenSci's "ropensci" GitHub organization the badge should be `[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/ropensci/pkgname?branch=master&svg=true)](https://ci.appveyor.com/project/individualaccount/pkgname)`.
- [ ] We're starting to roll out software metadata files to all ropensci packages via the Codemeta initiative, see https://github.com/ropensci/codemetar/#codemetar for how to include it in your package, after installing the package - should be easy as running codemetar::write_codemeta() in the root of your package.
<IF JOSS>
- [ ] Activate Zenodo watching the repo
- [ ] Tag and create a release so as to create a Zenodo version and DOI
- [ ] Submit to JOSS at <https://joss.theoj.org/papers/new>, using the rOpenSci GitHub repo URL. When a JOSS "PRE REVIEW" issue is generated for your paper, add the comment: `This package has been reviewed by rOpenSci: https://LINK.TO/THE/REVIEW/ISSUE, @ropensci/editors`
<IF JOSS/>

Should you want to acknowledge your reviewers in your package DESCRIPTION, you can do so by making them `"rev"`-type contributors in the `Authors@R` field (with their consent).  More info on this [here](https://devguide.ropensci.org/building.html#authorship).


Welcome aboard! We'd love to host a post about your package - either a [short introduction to it with an example](https://ropensci.org/tech-notes/) for a technical audience or [a longer post with some narrative about its development or something you learned, and an example of its use](https://ropensci.org/blog/) for a broader readership. If you are interested, consult [the blog guide](https://blogguide.ropensci.org/), and tag @stefaniebutland in your reply. She will get in touch about timing and can answer any questions.

We've put together an online book with our best practice and tips, [this chapter](https://devguide.ropensci.org/collaboration.html) starts the 3d section that's about guidance for after onboarding. Please tell us what could be improved, the corresponding repo is [here](https://github.com/ropensci/dev_guide).
