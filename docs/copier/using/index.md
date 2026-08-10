# Using the DERC Template

We tried to simplify this process as much as possible, but it will require the installation of some software on your computer. If you have experience with installing Python package, or R packages from the commandline, you should be fairly comfortable with installing the software needed to build these templates.

The reason we ask you to install this software is that once you've created the template it is linked to this template repository. That means that if we add new features to our project to help you improve your software you can automatically update your project with a simple command:

```bash
copier update
```

So, if we build better links to ORCID, update the codes of conduct, or add new license options, you can always stay synced with "best practices".

## Getting Started

`copier` is a Python program that you run from the commandline, however, it runs using a project called `uv`. This means we can run `copier` without fully installing Python (if you're working with R for example).

### Installing `python` (optional)

### Installing `uv`

### Installing `copier`

## Building the template

Once the tools are installed, move to your new directory, for example, imagine we've created a new project called `newproject`. I would create a directory called `newproject` and then open my shell (PowerShell, terminal or another) and move to that directory:

![Creating the directory](../../assets/directorypath.png)

Once we're in that directory you can create your new project from template:

```bash
copier copy https://github.com/UBC-DERC/derc_copier . --trust
```

This will them present you with the opportunity to provide full answers, or choose a minimum set of questions. Your answers for these questions will be stored in a file called `.copier.yaml` in your project directory.

Whether you choose to answer all questions, or just a minimal set, you can always go back and edit the answers in the `.copier-answers.yaml` file:

```yaml
# Changes here will be overwritten by Copier
_commit: 52d9952
_src_path: https://github.com/UBC-DERC/derc_copier
author_formal: Goring
author_given: Simon
author_orcid: https://orcid.org/0000-0002-2700-4605
code_of_conduct_lang: code_en
copyright_year: 2026
license_type: MIT License
lifecycle: lifecycle_planning
project_description: Importing and processing scholarly work by DERC contributors
    using open-access sources.
project_name: scholarship-import
repository: UBC-DERC
template_profile: recommended
```

This was generated from an earlier version of the template, but if I chose to update some of the answers (for example, I wanted to change the copyright year), I could make the change ot that file and then run:

```bash
copier update
```

From there `copier` would check to see if there is a new version of the template, and then update any files that depend on the copyright date I provided. For example, If I did modify `copyright_date` we would see changes to `LICENSE.md` and the `CITATION.cff`.

