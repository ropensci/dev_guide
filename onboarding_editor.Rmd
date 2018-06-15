# Onboarding Guide for Editors

Onboarding at rOpenSci is managed by a team of editors.  We are piloting
a system of a rotating Editor-in-Chief (EiC).

## EiC Responsibilities

The EiC serves for 3 months or a time agreed to by all members of the editorial
board. The EiC plays the following roles

- Watch all issues posted to the onboarding repo:
-  Assigns packages to other editors, including self, to handle. Mostly this just rotates among editors, unless the EiC thinks an editor is particularly suited to a package, or an editor rejects due to being too busy/conflict of interest.
- Raises scope/overlap issue with all editors if they see an ambiguous case.  This
may also be done by handling editors (see below). To initiate discussion, this
is posted to the rOpenSci Slack onboarding channel, tagging all editors.
 - Responds to pre-submission inquiries and `meta` issues posted to the onboarding
 repo, similarly pinging channel if discussion needed.  But editors should all feel free to chime in on these if they want.
 - Responds to referrals from JOSS or other publication partners.
 - Monitors pace of review process and reminds other editors to move packages
 along as needed.
 
## Responding to out-of-scope submissions

Thank authors for their submission, explain the reasons of the decision, and direct them to other publication venues if relevant, and to rOpenSci discuss forum. Use wording from [Aims and scope](#aims-and-scope) in particular regarding the evolution of scope over time, and the overlap and differences between unconf/staff/onboarding development.

[Examples of out-of-scope submissions and responses](https://github.com/ropensci/onboarding/issues?q=is%3Aissue+is%3Aclosed+label%3Aout-of-scope).


## Handling Editor's Checklist

### Upon submission:

-   Tag issue appropriately with `package`, `topic:`, etc. tags. Add `1/editor-checks` tag
    and assign a main editor if you haven't already.
-   Use the [editor template](#editortemplate) to guide initial checks and record your respose to the submission.
-   Check that template has been properly filled out
-   Check against policies for [fit](#aims-and-scope) and [overlap](#overlap).
    Initiate discussion via slack #onboarding channel if needed for edge cases.
    If reject, close issue, direct authors to other groups/repos as appropriate.
-   Check that mandatory parts of template are complete.  If not, close issue,
    direct authors toward appropriate instructions.
-   Run run automated tests: `devtools::check()`, `goodpractice::gp()`, `devtools::spell_check()`. Run
    `covr::package_coverage()` using `NOT_CRAN` if needed, as well. Report
    relevant outputs in the issue thread.
    -   For packages with compiled code or linking to external libraries or languages,
        check on multiple platforms, using win-builder, r-hub, or other editors
        as needed.
-   If initial checks show major gaps, request changes before assigning reviewers.
-   If the package raises a new issue for rOpenSci policy, open a discussion on the
    [rOpenSci forum](https://discuss.ropensci.org/) to discuss it with other
    editors ([example]()https://discuss.ropensci.org/t/overlap-policy-for-package-onboarding/368)
    
### Assign reviewers:

-   Switch numbered tag to `2/seeking-reviewers`
-   Ask author to add a rOpenSci review badge to their README. Badge URL is `https://badges.ropensci.org/<issue_id>_status.svg`. Full link should be:

```
[![](https://badges.ropensci.org/<issue_id>_status.svg)](https://github.com/ropensci/onboarding/issues/<issue_id>)
```

-   Use the #onboarding slack channel for discussion about potential reviewers.
-   Use the [email template](#reviewrequesttemplate) if needed for inviting reviewers
    -   When inviting reviewers, include something like "if I don't hear from
        you in a week, I'll assume you are unable to review," so as to give a
        clear deadline when you'll move on to looking for someone else.
-   Assign a due date 3 weeks after all reviewers have been found.
-   Once two or more reviewers are found, assign reviewer by tagging in the issue with the
    following format to activate the automated reminders bot:
   
      Reviewer: @githubname1 
      Reviewer: @githubname2
      Due date: YYYY-MM-DD

-   Switch numbered tag `to 3/reviewers-assigned` once reviewers are assigned.
-   Invite authors and reviewers to rOpenSci Slack if they aren't on already.

### During review:

-   Check in with reviewers and authors occasionally. Offer clarification and help as needed.
-   In general aim for 3 weeks for review, 2 weeks for
    subsequent changes, and 1 week for reviewer approval of changes.
-   Make sure ropensci-bot is pinging correctly. (currently defunct)
-   Upon all reviews being submitted, change the review status tag to
    `4/review-in-awaiting-changes` to update the reminder bot.
-   Upon changes being made, change the review status tag to `5/awaiting-reviewer-response`.
    
### After review:

-  Change the status tag to `6/approved`.
-   Add review/er information to the review database.
-   If authors intend to submit to CRAN, check against CRAN gotchas and provide
    support through this process.
-   Ask authors to migrate to `ropensci`
    -   Create a two-person team in the ropensci organization, named for the
        package, with yourself and the package author as members.
    -   Have the author transfer the repository to `ropensci`
    -   Go to the repository settings in the `ropensci` organization and give
        the two-person team "Write" access to the repository. ("Admin" access
        may be temporarily granted for purposes such as creating Zenodo releases,
        setting up package documentation options, etc.)

-   Ask author to:
    -   Add rOpenSci footer to README
    -   Change any needed links, such those for CI badges
    -   Re-activate CI services
        -  For Travis, activating the project in the ropensci account should be
           sufficient
        -  For Appveyor, tell the author to update the GitHub link in their badge, but do not transfer the project: Appveyor projects should remain under the authors' account. The badge is `[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/ropensci/pkgname?branch=master&svg=true)](https://ci.appveyor.com/project/individualaccount/pkgname)`.
        -  For CodeCov, the webhook may need to be reset by the author.
-   Close the onboarding issue. 

### For joint JOSS submissions:

-  After repo is transferred and admin rights assigned, have author generate
   a new release with a DOI.
-  Ask author to submit package via http://joss.theoj.org/papers/new
-  Watch for paper to pop up at http://joss.theoj.org/papers, then
   add the following comment to the submission thread:
   
   `This submission has been accepted to rOpenSci. The review thread can be
    found at [LINK TO ONBOARDING ISSUE]`

### Package promotion:

-  Ask authors to write either a blog post or a tech-notes post for the package, as appropriate, and ping [Stefanie Butland](https://github.com/stefaniebutland), rOpenSci community manager.
-   Alert maintainers of appropriate [task views](https://github.com/search?utf8=%E2%9C%93&q=user%3Aropensci+%22task+view%22&type=Repositories&ref=searchresults)
-   Direct the author to the chapters of the guide about [package releases](#releases), [marketing](#marketing) and [GitHub grooming](#grooming).
