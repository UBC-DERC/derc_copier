# Best Practices

There are a lot of things that go into developing reproducible research software, and there is a huge range of projects that would qualify as reproducible research software. For example:

* Statistical analysis using R
* A Quarto (or RMarkdown) notebook
* A computer vision pipeline
* A software package for R or Python

The DERC template sets up folders, files, and even simple programs that encode
these best practices for you. The pages in this section explain the ideas behind
them, so you understand *what* to do and *why* &mdash; and so you can adapt them to
your own work.

## In this section

* [**Building Better Code**](building/index.md) &mdash; style, testing, and the
  tooling that keeps your code clean and reliable.
* [**It's Your Work &mdash; Attribution**](attribution/index.md) &mdash; citation,
  licensing, and describing your work so it can be found and credited.
* [**Building Community**](community/index.md) &mdash; codes of conduct,
  contribution guides, and documentation that make a project welcoming.
* [**Staying Organized**](organization/index.md) &mdash; folder structure, package
  and library management, version control, and changelogs.

## How the template fits in

The DERC template uses [`copier`](https://copier.readthedocs.io/) to generate both
**R** and **Python** projects. Rather than remembering to add each of these
best-practice elements by hand, the template creates them for you at setup, and lets
you pull in improvements later. See [Using the DERC Template](using/index.md) to get
started.
