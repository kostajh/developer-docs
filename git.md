# Git

## Basic git workflow (git flow)

We use git to manage our work, and generally use the git-flow workflow. Read through the descriptions of [feature branch workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow) and [git flow workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) for more background.

The essentials are:

- Each project has a base repository, either under the `savaslabs` GitHub account or under a client account.
- This repository generally has `master` and `develop` branches, although this can vary on a project-by-project basis. For chunks of work which involve a longer development time before being merged into master, we sometimes open a feature branch on the base repository.
- Individual developers fork the base repository to their own GitHub account, and add both the base repository (as `upstream`) and their fork (as `origin`) to their local git instance.
- Never push new code from your desktop to the base repository; instead push branches to your fork.
- Code changes on the base repository should always happen via pull requests that involves a peer review process.

General workflow:

1. Pull the most recent version of the `develop` (or other relevant base branch, depending on the project) branch from the base repo to your local environment.
2. Open a new branch for the new feature you're working on. Usually this corresponds to an issue number on redmine. Branches should be named `feature/issue#-description`, like `feature/824-refactor-module-code`. Following the git-flow model, this holds for all new work, even if the "feature" is actually a bugfix. The only exception is `hotfix` branches, which are not discussed here. We do this because it makes it easy at a glance to differentiate between feature branches in the list of branches on the repository.
3. Working locally, make commits for your work (see below).
4. When the feature branch is ready for review, rebase the feature branch on the most recent `develop` branch (if there have been changes). Developers may choose to merge the new changes into the feature branch instead.
5. If necessary, do an interactive rebase to cleanup redundant multiple commit messages.
6. Push the feature branch to your fork (the `origin` remote).
7. Open a pull request (see below) to merge the feature branch **from** your fork of the repo **to** the base repository.

### GitHub flow

On simpler projects, rather than using the full git flow process (where features are merged into `develop` and then tagged releases are created separately on `master`), we use a streamlined workflow where feature branches are merged directly into the `master` branch. This workflow [is described here](http://scottchacon.com/2011/08/31/github-flow.html).

### Git flow extension

It is also possible to automate parts of the above workflow using the [gitflow extension](https://github.com/nvie/gitflow), which some developers at Savas Labs use. Project managers may use git-flow as well to create tagged releases.

## Git commit messages

Good git commit messages are helpful for consistency with your collaborators. They also make your code workflow thoughtful and professional. There doesn't seem to be an industry-wide standard on _the_ perfect message format, but for our purposes, the most helpful guide to reference is [this one](http://chris.beams.io/posts/git-commit/). It proposes this easy [rule set to follow](http://chris.beams.io/posts/git-commit/#seven-rules):

> 1. Separate subject from body with a blank line
> 1. Limit the subject line to 50 characters
> 1. Capitalize the subject line
> 1. Do not end the subject line with a period
> 1. Use the imperative mood in the subject line
> 1. Wrap the body at 72 characters
> 1. Use the body to explain what and why vs. how

Please read through and reference the post for more detail on each of the items above.

We also have a few in-house additions to this:

> 1. Reference the relevant Redmine/GitHub issue at the beginning of each commit, e.g. "Issue #123: Fix git commit message docs"
> 1. If you find yourself leaving important/lengthy notes in the commit body, consider whether that message should also be present as code comments for improved discoverability

## Creating a good pull request

A pull request is an important piece of communication, both to other developers reviewing your code and to future developers who need to understand the history of the project.
Like commit messages, pull request titles should start with `Issue #___: ` and be a one-line summary of what the PR does. **If your pull request is not ready for review**, mark it
as a work-in-progress by putting `[WIP]` in front of the title.

 A good pull request description should:
 
* Give a concise summary of what changes are introduced to the codebase and/or functionality in the pull request. Often we do this using a bullet list.
* List any steps which will necessary to deploy the pull request, both locally and in production -- this should have all the information necessary to deploy.
* Give any specific instructions that are necessary for testing. Include links to URLs for testing whenever you can!
* Specify any specific issues that you want developers doing peer review to be sure to investigate thoroughly.
* Give a timeframe for review.

Once the pull request is open, you should also assign a specific reviewer in GitHub, set the applicable Redmine task(s) status to `Developer Review`, assign those
 tasks to the reviewer, and paste a link to the pull request in the `GitHub PR` field. If the request is urgent, you should also communicate with the reviewing developer
 via some other channel rather than relying on them to get GitHub or Redmine notifications.

## Git workflows

### Git flow

### GitHub flow

## Code review
