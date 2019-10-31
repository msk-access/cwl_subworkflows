# Contributing

* [Contributing](contributing.md#contributing)
  * [Setup Development Environment](contributing.md#setup-development-environment)
    * [Git User](contributing.md#git-user)
  * [Version Control](contributing.md#version-control)
    * [Master](contributing.md#master)
    * [Next](contributing.md#next)
    * [Branches](contributing.md#branches)
    * [Hotfix](contributing.md#hotfix)
    * [Commits](contributing.md#commits)
      * [Examples](contributing.md#examples)
    * [Code Review](contributing.md#code-review)
    * [Merge Branch](contributing.md#merge-branch)
  * [Your First Pull Request](contributing.md#your-first-pull-request)

## Setup Development Environment

* [Git User](contributing.md#git-user)

### Git User

1. Tell Git who you are

```text
git config --global user.name "Your Name"
git config --global user.email "example@address.com"
```

## Version Control

* [Master](contributing.md#master)
* [Next](contributing.md#next)
* [Branches](contributing.md#branches)
* [Commits](contributing.md#commits)
* [Code Review](contributing.md#code-review)

### Master

The `master` branch should be considered the most up-to-date stable version of the software. No active development should take place on directly `master` and the latest commit should always be tagged to a release.

* [Hotfix](contributing.md#hotfix) should be branched off of `master`

### Next

The `next` branch should be considered the most up-to-date development version of the software. No active development should take place on directly on `next`.

* All [development](contributing.md#branches) should be branched off of `next`
* `next` should be rebased with `master` after a hotfix

### Branches

All development should happen on a branch off of `next`. Branch names should include a ticket number if possible: `TICKET-##-couple-words` or `my-update`.

```text
git checkout -b TICKET-11-my-feature
```

* Branches should be rebased with `next` if they get out of date.
* Branches should be [merged](contributing.md#merge-branch) into `next` when they are completed.

### Hotfix

A hotfix is a [branch](contributing.md#branches) that uses `master` as a base instead of `next`.

### Commits

* Commit messages should make it easy for some one to scan through a commit log and understand the current state of the code.
* When only changing documentation, include `[ci skip]` in the commit description
* Consider starting the commit message with an applicable emoji:

  * :tada: `:tada:` for the initial commit
  * :green\_heart: `:green_heart:` when fixing the CI build
  * :white\_check\_mark: `:white_check_mark:` when adding tests
  * :arrow\_up: `:arrow_up:` when upgrading dependencies
  * :arrow\_down: `:arrow_down:` when downgrading dependencies
  * :shirt: `:shirt:` when removing linter warnings
  * :recycle: `:wrench:` when refactoring
  * :wrench: `:wrench:` when updating tooling

  start with one of the following emojis to add your commit to the change log:

  * :racehorse: `:racehorse:` when improving performance
  * :sparkles: `:sparkles:` when adding a new feature
  * :bug: `:bug:` when fixing a bug
  * :books: `:books:` when adding documentation
  * :globe\_with\_meridians: `:globe_with_meridians:` when adding internationalization

* you can use multiple emojis but only with first will be considered when generating the change log
* you can look at [gitmoji](https://gitmoji.carloscuesta.me/) for inspiration

#### Examples

Commits have the following structure:

```text
:icon: [TICKET-1,TICKET-2] one line description

Longer description
- list of changes
- one more thing
```

Examples of valid commits:

```text
:sparkles: [TICKET-1,TICKET-2] adds new page to that page

Adds new feature to do that thing that we wanted to do:
- That one thing it does
- that other thing it does
```

```text
:bug: [TICKET-1] fixes bug with thing
```

```text
:racehorse::wrench: better production mode
```

```text
:shirt: fixes eslint in tests
```

### Code Review

* All branches should be pushed to Github for code review.
* All branches need to be reviewed and signed-off before they can be considered complete.
* Any branches containing significant changes will also need to be QA'ed.

### Merge Branch

After a branch has been [reviewed](contributing.md#code-review) it can be merged.

When merging use the `Squash and Merge` option:

![alt text](https://github.com/knitjs/knit/raw/master/docs/squash.png)

Before merging you are free to squash commits locally if you want more control over the commit message.

[https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History\#Squashing-Commits](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History#Squashing-Commits)

[https://github.com/blog/2141-squash-your-commits](https://github.com/blog/2141-squash-your-commits)

## Your First Pull Request

1. clone the repo
2. create a new [branch](contributing.md#branches)
3. do some [work](contributing.md#setup-development-environment)
4. [commit](contributing.md#commits) your changes
5. push changes to Github for [review](contributing.md#code-review)
6. repeat as necessary
7. rebase [next](contributing.md#next) into your branch and deal with any conflicts.
8. get someone to [review and sign-off](contributing.md#code-review) on your branch
9. wait for the CI system to test your branch
10. [merge](contributing.md#merge-branch) into [next](contributing.md#next)

References:

* Heavly inspired by other repositories on github

