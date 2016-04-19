# Time Entry

Accurate, informative and timely time entry is a crucial task for successful project management. (Puns always intended.)

<u>**Clients will review every time entry**</u> we record on their project, so it is essential to be thoughtful and professional in your language. Project managers will also delight in well-crafted, informative time entry messages.

## Using Harvest

We use [Harvest]( https://chrisrusso.harvestapp.com/welcome) to record time.

Harvest is best used in real-time, as you switch from task to task. If you do this, at the end of the work day you have a (mostly) complete log of where you spent your time, and can spend a few minutes tidying up time entries and descriptions. In any case, time entries for a given day should be entered by midnight of that same day. This is important for project planning as well as for syncing entries with Redmine.

### Tools

If you're on a Mac, you might find [Harvest for Mac](https://www.getharvest.com/mac) to be a useful tool. There are [numerous other add-ons](https://www.getharvest.com/add-ons) that the diligent time tracker might find helpful.

## How to write the _perfect_ time entry

A good time entry message is in some ways like a good commit message: done well, it tells a coherent story about what happened, when, why, and of course, the all-important "how long", which git doesn't do.

Some guidelines:

- Pay close attention to the [appropriate task](#tasks) and log accordingly.
- Write an informative description. It may be concise but not empty.
  - Use professional language. Check your spelling.
- When applicable, reference the [Redmine](/redmine.html) issue number in your Harvest time entry. We have a [script that transfers time recorded in Harvest](https://github.com/savaslabs/sumac) to time spent on issues in our project management tool which helps us monitor time estimated vs. time spent.

### Anatomy of a good time entry

This references the issue, and outlines what specific aspects were worked on:

> Issue #911: Updates for scenarios where users register for online workshops on behalf of attendees other than themselves. This involves updating notification emails and reminder emails, adding a confirmation email, and modifying how online workshops are displayed on the user profile online workshop tab.

This is much more informative than a time entry that simply reads "Issue #911" — while that provides some context, it then requires the project manager to look up the entry in Redmine, and still wouldn't tell them what specifically was worked on.

## Tasks

Tasks fall into two primary categories:

- *Billable* tasks are those that are expected of us to invoice clients for based on our agreed upon scope of work.
- *Non-billable* tasks, naturally, we are not compensated for.

There are a set of "common" tasks that are added by default ([see exceptions](#exceptions)) to each client project and are the most commonly used. Note that "Admin" is the only non-billable task in the following list:

- **Admin** - *non-billable* catch-all for miscellaneous tasks; rarely used on client projects
- **Assessment/Estimating** - Estimating per a client's request.
- **Code Review** - PR review, other peer code analysis.
- **Design/UX** - Mockups, wireframes, UX tasks.
- **Development** - Writing code, configuring/building/writing software.
- **Project Management** - Client/internal calls/meetings, issue queue management, documentation, organizational tasks.
- **Research** - Sometimes you've got to look things up.
- **Setup/Deployment** - Local dev environment, staging or production deployments.
- **Research / Strategy / Consulting** - Researching a technical solution, advising a client, consulting on options and approaches. Discovery tasks.
- **Testing** - Writing automated tests, manual QA
- **Theme development** - Building templates, writing SASS/LESS/CSS.
- **Unestimated / Out of Scope** - Tasks that become part of a project that were not in the initial scope of work. These tasks can be driven clients with new requests or by developers taking a new approach. Generally speaking, if you are logging to this task, you should make sure your project manager is aware.

## Internal projects and tasks

Internal projects help us track how we're investing our time internally, and although they have overlap in tasks with a typical client project, they have unique tasks attributed to them. Please ensure that you select the appropriate internal project for each internal task as there are multiple. As always, ask when you don't know.

- **Admin** - catch all, please be more specific when possible. Checking email, daily-standup.
- **Blog writing / research / review** - Blog writing or reading/reviewing of others'.
- **Business Development** - Reading a proposal, providing estimates for a proposal, conversing about a prospective project.
- **Training** - Personal skill development.
- **Meeting** - Internal calls or in-person meetings.
- **Skillshare** - Team skillshare, time researching / preparing for skillshare delivery.
- **Mentoring** - Providing training to a teammate.

### Exceptions

Sometimes it will be necessary to tie projects to very specific tasks within a given scope of work to facilitate accurate reporting and ensure maintenance of budget. When this is the case, the project manager/lead will inform each team member and the appropriate tasks to select for the project will be clearly stated on the project wiki page.
