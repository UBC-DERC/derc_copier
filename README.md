[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

# DERC Python Copier

This is a [copier](https://copier.readthedocs.io/en/stable/) project, designed to help researchers within DERC create high quality repositories to be shared publically, using best practice approaches. We identigy both R and Python as key coding languages for researchers using DERC data, and aim to support them in developing clear workflows through the development of a clear "DERC" branding for projects.

Our goal is to support researchers in developing high quality code repositories for their work. This helps researchers meet the goals of [FAIR Research](https://www.go-fair.org/fair-principles/) by making their research Findable (with DOIs, improved metadata, and clear citations), Accessible (with readable and clearly licensed code), Interoperable (improving code practices using tools like `ruff` to improve common coding issues, and ensuring that data outputs and inputs are clearly identified) and Reusable (making tools like `uv` and virtual environments easier to manage).

## Using this Repository

`copier` works by generating a folder structure from a set of template files. To use `copier` you first need to [install it](https://pypi.org/project/copier/) on your computer.

Currently we strongly recommend using `uv` as part of your Python toolkit.  If you have Python installed, you can add `copier` using:

```bash
uv tool install copier
```

If you know the location of the copier template files then you simply call:

```bash
copier copy path/to/project/template path/to/destination
```

This then gives you a set of prompts to work through, asking information about your name, the project name, and some other choices. These choices will populate a folder with a set of supporting files to help you develop robust code.

### What is Required

To begin you are asked some information to help populate the files. These values may be left blank, or you may revisit and revise the values later. They are simply used to initialize things. If you don't have a good idea of your project description yet, don't worry, you can go back later and edit it in your `README` file.

Here are the fields we ask for:

* Project Name: A short descriptive name for your project.
* Project Description: A longer (paragraph) descriptive statement to help people understand why they might want to look at this project.
* Your name:
  * Names come in all sorts of different shapes and sized. We ask for a "Formal" and a "Given" name. We do this to support scholarly citation. The formal name would be the name you'd use in professional settings, if you were addressed as Prof. XXXX. The "Given" name is used as part of your citation: `XXXXX, YYY Y.` for example, where XXXXX is your formal name, and `YYY Y.` is the first part of your name as you'd use it in a citation.
* Your ORCID:
  * ORCIDs are widely used for scholarly publications. They are unique individual identifiers that can be connected to publications and datasets, and they are self-managed. A goal of using them here is that you can connect your ORCID to your code as well. DOIs can be issued for GitHub (or other) code repositories. By linking you can have your code repositories added to your ORCID profile to show the breadth of your scholarly output.
* Copyright Year: Generally the default is the current year.
* License Type: Appropriate software licensing is an ongoing discussion in academia and elsewhere. We provide a selection of open source licenses here to choose from. If you use confidential data, or data that is part of an NDA or other agreement then you may choose to skip or remove the license file.
* Code of Conduct: A Code of Conduct is a critical component of any software repository (and project generally). This question allows you to choose a code of conduct in one of several languages.
