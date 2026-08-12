# Using the DERC Template

We tried to simplify this process as much as possible, but it will require the installation of some software on your computer. If you have experience with installing Python packages, or R packages from the commandline, you should be fairly comfortable with installing the software needed to build these templates.

The reason we ask you to install this software is that once you've created the template it is linked to this template repository. That means that if we add new features to our project to help you improve your software you can automatically update your project with a simple command:

```bash
copier update
```

So, if we build better links to ORCID, update the codes of conduct, or add new license options, you can always stay synced with "best practices".

## The three steps

Creating a project from this template breaks down into three stages. Follow them
in order the first time; after that you'll mostly just use the update step.

1. **[Installing the tools](installing.md)** &mdash; install `git`, `uv`, and
   `copier` (plus R or Python, depending on your project).
2. **[Building your project](building.md)** &mdash; choose a profile, answer the
   questions, and generate your project from the template.
3. **[Keeping your project in sync](updating.md)** &mdash; use `copier update` to
   pull in future improvements to the template.
