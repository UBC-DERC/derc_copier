[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

[![core_actions](https://github.com/UBC-DERC/derc_copier/actions/workflows/validation.yml/badge.svg)](https://github.com/UBC-DERC/derc_copier/actions/workflows/validation.yml)

# DERC Copier

This is a [copier](https://copier.readthedocs.io/en/stable/) project, designed to help researchers within DERC create high quality repositories to be shared publically, using best practice approaches. We identify both R and Python as key coding languages for researchers using DERC data, and aim to support them in developing clear workflows through the development of a clear "DERC" branding for projects.

Our goal is to support researchers in developing high quality code repositories for their work. This helps researchers meet the goals of [FAIR Research](https://www.go-fair.org/fair-principles/) by making their research **F**indable (with DOIs, improved metadata, and clear citations), **A**ccessible (with readable and clearly licensed code), **I**nteroperable (improving code practices using tools like `ruff` to improve common coding issues, and ensuring that data outputs and inputs are clearly identified) and **R**eusable (making tools like `uv` and virtual environments easier to manage).

## Using this Repository

`copier` works by generating a folder structure from a set of template files. We have tried to meet best practices for both software and research projects in our development, to help you create the best project possible. To use `copier` you first need to [install it](https://pypi.org/project/copier/) on your computer.

Currently we strongly recommend using `uv` as part of your Python toolkit. If you have Python and `uv` installed, you can add `copier` using:

```bash
uv tool install copier
```

To use this template, build from this repository, and point to the directory you want to copy the files to.

```bash
copier --trust copy https://github.com/UBC-DERC/derc_copier path/to/destination
```

This then gives you a set of prompts to work through, asking information about your name, the project name, and some other choices. These choices will populate a folder with a set of supporting files to help you develop robust code.

**NOTE**: This implementation initializes a `git` folder (for version control) for you as part of the process. Because of this you will be asked to add `--trust` to your `copier` command.

### What is Required

To begin you are asked some information to help populate the files. These values may be left blank, or you may revisit and revise the values later. They are simply used to initialize things. If you don't have a good idea of your project description yet, don't worry, you can go back later and edit it in your `README` file.

The full list of questions is visible in the [`copier/questions/questions.yml`](copier/questions/questions.yml) file. Questions are listed as required (`project_name` and `package_name`) or optional.

**You don't have to answer everything now!**

The nice thing about `copier` is that it lets us update over time. If we improve these templates, you can update. If you have new answers you can update.

### Updating My Answers

After you've created your folder setup you will see a file called `.copier_answers.yml`. This contains all your answers, including answers to the questions you skipped. At any time you can edit these answers, and then update your repository with the command: `copier update`.

## Testing

It's always important to test projects. For this project we use the [`ctt`](https://copier-template-tester.kyleking.me/) (copier-template-tester) package. `ctt` uses the [`ctt.toml`](ctt.toml) file to provide a set of pre-defined answers for various scenarios. Running:

```bash
uv run ctt
```

This will generate a set of templates in a new `.ctt` folder. Once the folder has been checked, you will know whether or not the template works.

