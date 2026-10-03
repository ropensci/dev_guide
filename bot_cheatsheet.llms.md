# 27  Bot commands

## 27.1 For everyone

Note that we clean issue threads by removing extraneous content, so the record of you having asked for bot-help will most often quickly be erased or hidden.

### 27.1.1 See the list of commands available to you

If you need a quick reminder!

``` markdown
@ropensci-review-bot help
```

### 27.1.2 See the code of conduct

``` markdown
@ropensci-review-bot code of conduct
```

## 27.2 For authors

### 27.2.1 Check package with pkgcheck

When your package has substantially changed.

``` markdown
@ropensci-review-bot check package
```

### 27.2.2 Submit response to reviewers

To record your response to reviewers.

``` markdown
@ropensci-review-bot submit response <response-url>
```

where `<response_url>` is the link to the response comment in the issue thread.

### 27.2.3 Finalize repo transfer

After you’ve accepted the invitation to rOpenSci GitHub organization and transferred your GitHub repository to it, run this command to re-gain admin access to your repository.

``` markdown
@ropensci-review-bot finalize transfer of <package-name>
```

### 27.2.4 Get a new invite after approval

If you missed the one-week window to accept the invitation to the rOpenSci GitHub organization, run this to receive a new one.

``` markdown
@ropensci-review-bot invite me to ropensci/<package-name>
```

## 27.3 For the editor-in-chief

### 27.3.1 Assign an editor

``` markdown
@ropensci-review-bot assign @username as editor
```

### 27.3.2 Put submission on hold

See [editorial policy](#policiesreviewprocess).

``` markdown
@ropensci-review-bot put on hold
```

### 27.3.3 Indicate the submission is out of scope

Do not forget to first post a comment explaining the decision and thanking the author(s) for their submission.

``` markdown
@ropensci-review-bot out-of-scope
```

## 27.4 For assigned editor

### 27.4.1 Put submission on hold

See [editorial policy](#policiesreviewprocess).

``` markdown
@ropensci-review-bot put on hold
```

### 27.4.2 Check package with pkgcheck

Generally only on pre-submission inquiries, or when authors otherwise indicate that the package has substantially changed.

``` markdown
@ropensci-review-bot check package
```

### 27.4.3 Check statistical standards

Generally only on pre-submission inquiries, or when authors otherwise indicate that the package has substantially changed.

``` markdown
@ropensci-review-bot check srr
```

### 27.4.4 Check that README has software review badge

Towards the end of the submission process.

``` markdown
@ropensci-review-bot check readme
```

### 27.4.5 Indicate you are now seeking reviewers

``` markdown
@ropensci-review-bot seeking reviewers
```

### 27.4.6 Assign a reviewer

``` markdown
@ropensci-review-bot assign @username as reviewer
```

or

``` markdown
@ropensci-review-bot add @username as reviewer
```

### 27.4.7 Remove a reviewer

``` markdown
@ropensci-review-bot remove @username from reviewers
```

### 27.4.8 Tweak review due date

``` markdown
@ropensci-review-bot set due date for @username to YYYY-MM-DD
```

### 27.4.9 Record that a review was submitted

``` markdown
@ropensci-review-bot submit review <review-url> time <time in hours>
```

### 27.4.10 Approve package

``` markdown
@ropensci-review-bot approve <package-name>
```
