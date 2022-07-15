# Contributing to OpenV2X

The OpenV2X team is glad to accept contributions from anybody willing to collaborate. There are
different ways to contribute to the project, depending on the capabilities of the contributor. The
team will work as much as possible so that contributions are successfully integrated in OpenV2X.

Take a look and don't hesitate!

- [Contributing to OpenV2X](#contributing-to-openv2x)
  - [Report bugs](#report-bugs)
  - [Request features](#request-features)
  - [Code contributions](#code-contributions)
    - [Before getting started](#before-getting-started)
    - [Coding standard](#coding-standard)
    - [Submission](#submission)
    - [Checklist](#checklist)
  - [Docs contributions](#docs-contributions)

## Report bugs

Issues can be reported in the issue section on GitHub. For different repositories, their issue
sections are seperately as [centerview](https://github.com/open-v2x/centerview/issues),
[cerebrum](https://github.com/open-v2x/cerebrum/issues),
[dandelion](https://github.com/open-v2x/dandelion/issues),
[edgeview](https://github.com/open-v2x/edgeview/issues) and
[roadmocker](https://github.com/open-v2x/roadmocker/issues). Before reporting a new bug, make sure
to do some checkups.

**1. Check if the bug has been reported.** Look it up in that same issue section on GitHub.

**2. Read the docs.** Make sure that the issue is a bug, not a misunderstanding on how is OpenV2X
supposed to work.

**3. Follow the template requirements to submit bugs.** Please follow the template requirements to
fill in the necessary information. ![](images/issues_button.png) ![](images/bug_report_button.png)
![](images/bug_report_template.png)

## Request features

Ideas for new features are also a great way to contribute. Any suggestion that could improve the
users' experience can be submitted in the corresponding GitHub section. These sections are totally
same as the issue sections mentioned above. Please click the **feature request** button and follow
the template requirements to fill in the necessary information. ![](images/issues_button.png)
![](images/feature_request_button.png) ![](images/feature_request_template.png)

## Code contributions

Before starting hands-on on coding, please check out the **issue board** to check what is the team
already working on, to avoid overlapping. In case of doubt or to discuss how to proceed, please
contact one of us (or send an email to contact@openv2x.org).

In order to start working, fork the **corresbonding OpenV2X repository**, and clone said fork in
your computer. Remember to
[keep your fork in sync](https://docs.github.com/en/enterprise/2.13/user/articles/syncing-a-fork)
with the original repository.

### Before getting started

Check out the [OpenV2X Architectural Design document](v2x-1.0.126-architectural-design.md) to get an
idea on the different modules that compose OpenV2X. Choose the most appropriate one to hold the new
feature. Feel free to contact the team in case any doubt arises during the process.

### Coding standard

Follow the current coding standard when submitting new code.

### Submission

Contributions and new features are not merged directly to the `master` branch, but to an
intermediate branch named `dev`. This Gitflow branching model makes it easier to maintain a stable
`master` branch. This model requires a specific workflow for contributions.

Always keep your `dev` branch updated with the lastest changes. Develop the contribution in child
branch from `dev` named as `username/name_of_the_contribution`. Once the contribution is ready,
submit a pull-request from your branch to `dev`. Try to be as descriptive as possible when filling
the description. Note that there are some checks that the new code is required to pass before
merging. The checks are automatically run by the continuous integration system. A green tick mark
will appear if the checks are successful. If a red mark, please correct the code accordingly. Once
the contribution is merged in `dev`, it can be tested with the rest of new features. By the time of
the next release, the `dev` branch will be merged to `master`, and the contribution will be
available and announced.

### Checklist

- Your branch is up-to-date with the `dev` branch and tested with latest changes.
- Extended the README/documentation, if necessary.
- Code compiles correctly.
- All tests passing with `tox` or `npm test`.

## Docs contributions

If some documentation is missing, vague or imprecise, it can be reported as with any other bug (read
the previous section on [how to report bugs](#report-bugs)). However, users can contribute by
writing documentation. To submit docs contributions, follow the same workflow explained right above
in [code contributions](#code-contributions). To sum up, contributions are made in a child branch
from `dev` and merged to said branch.
