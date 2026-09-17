# Describing

Describing your code extends beyond documentation and README files. Things like DOIs, DataVerse uploads and other products may have extensive metadata associated with them. This metadata helps with *discovery* of your products. It also helps make sure that people actually understand what the package does, what software is used, what problem it is trying to solve.

Many concepts we use for describing our repository are common across different software implementations, but the way they are actually done does vary. 

## Python

Python primarily self-documents using a [`pyproject.toml` file](https://packaging.python.org/en/latest/guides/writing-pyproject-toml/). People will also encounter `requirements.txt` files, but to newer `toml` file is useful because it contains a lot of important information about a software project that makes it more discoverable, and also reproducible if someone else chooses to use your work in part of their own research.

### A simple `pyproject.toml` file

```toml
[project]
name = "testproject"
version = "26.08"
description = "A copier placeholder to make sure things work."
readme = "README.md"
authors = [
    { name = "SmongusLastName IV", email = "banana@banana.banana" }
]

requires-python = ">=3.12"

dependencies = []

[build-system]
requires = ["uv_build>=0.11.20,<0.12.0"]
build-backend = "uv_build"

[dependency-groups]
dev = [
    "ruff>=0.16.0",
    "pytest>=7.4.0",
    "pytest-cov>=4.1.0",
]
```

From this simple example, we can see the name of the project, the author, it lets us know what other Python packages are needed, and it helps us see that there are also applications for testing, code cleaning and documentation.

Our DERC `copier` tool helps us fill much of this in, giving us a bare-bones `pyproject` file that already includes some of the important information. It also lets you jump right into development with `pytest` and `ruff` installed, so you can start with clean code from the get-go.


### Extending Metadata -- Keywords

`pyproject` files can also identify the license type, related webpages and useful keywords, as well as classifiers from a set of controlled vocabularies. To do this we would add some extra information into our `[project]` section of the TOML file:

```toml
license = "MIT"
license-files = ["LICENSE.md"]
keywords = ["data model", "database", "postgres", "data governance", "documentation"]
classifiers=[
    "Development Status :: 3 - Alpha",
    "Environment :: Console",
    "Framework :: MkDocs",
    "Programming Language :: Python :: 3.12",
    "Programming Language :: Python :: 3.13",
    "Intended Audience :: Science/Research",
    "Operating System :: POSIX :: Linux",
    "Topic :: Database",
    "Topic :: Software Development :: Documentation"]
```

Take a look at this section, can you get a sense of what the software might be doing? The hope is that we can use this information to decide whether this is the right piece of software for us, and, to search for software that meets our needs. The more complete your list of keywords is, and the more precise your classifiers, the more discoverable (or **Findable**, if we're thinking FAIR) your software will be.

### Extending Metadata -- Homepages

We also want to provide external liks to other parts of our project. Homepages, even publications can be linked if we have URLs.

```toml
[project.urls]
repository="https://github.com/UBC-DERC/data_model"
homepage="https://UBC-DERC.github.io/data_model"
issues="https://github.com/UBC-DERC/data_model/issues"
```

### Updating your `pyproject.toml`

Any `pyproject` file can always be updated or modified as your project changes, but at any point in time, it represents the way that others see your work, and, in particular, it helps other software understand what you're doing and relate to it in an appropriate way.

## R

R documents packages using a `DESCRIPTION` file. The `DESCRIPTION` file, similarly, describes authors, versioning and dependent packages. It's useful to note that `DESCRIPTION` files are much more common with R Packages, as opposed to sets of R scripts. It's also worth noting that the project supports that tools like `devtools` provide are incredibly powerful, and so developing any project as a "package" can be very useful, even if you don't intend to release the project to CRAN.
