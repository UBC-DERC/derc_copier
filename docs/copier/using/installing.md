# Installing the Tools

`copier` is a Python program that you run from the commandline, however, it runs
using a project called `uv`. This means we can run `copier` without fully
installing Python (if you're working with R for example).

Before you build a project you'll need a few tools. `git` and `copier` are always
required; whether you need Python or R installed depends on your project's primary
language.

## Installing `git`

The template puts your new project under version control for you &mdash; as part of
generation it runs `git init`, makes an initial commit, and tags a first release.
Because of this, **`git` must be installed** before you build a project, and you
should have configured your identity at least once:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

If you don't already have `git`, download it from
[git-scm.com](https://git-scm.com/downloads). Installation instructions may be OS
dependent.

## Installing `python` (optional)

If you install and run `copier` through `uv` (see below), you generally **do not**
need to install Python yourself &mdash; `uv` will download and manage an appropriate
Python version for you automatically. This is especially convenient if your project
is primarily in R.

If you would still like a system-wide Python installation, there is very good
documentation online and downloads are free. Use the
[Python Downloads](https://www.python.org/downloads/) page to install Python on your
computer. Installation instructions may be OS dependent.

## Installing `uv`

As with Python, installing `uv` may be OS dependent, and instructions may change over time. `uv` is a free tool, intended for developers primarily, to help manage your project dependencies. It is a _Python_ specific tool, and doesn't really work with R, but it is extremely useful, and relatively small.

Installation instructions are [here](https://docs.astral.sh/uv/getting-started/installation/)

## Installing `copier`

Because `copier` is a Python command-line tool, `uv` can install and run it for you
&mdash; you do **not** need to use `pip`. There are two approaches, and either works.

!!! note "Why `jinja2-time`?"

    This template uses the `jinja2_time.TimeExtension` Jinja extension to stamp
    dates into your generated project. That extension must be available in the
    same environment as `copier`, so both install options below include it with
    `--with jinja2-time`. If you omit it, generation fails with
    `ModuleNotFoundError: No module named 'jinja2_time'`.

**Option 1 &mdash; run it without installing (recommended for one-offs):**
`uvx` (short for `uv tool run`) downloads `copier` into a temporary, cached
environment and runs it immediately. This is ideal if you only occasionally
create or update a project, or if you work primarily in R and don't want a
permanent Python tool installed:

```bash
uvx --with jinja2-time copier --version
```

Anywhere the rest of this guide shows a `copier ...` command, you can simply
prefix it with `uvx --with jinja2-time`, for example
`uvx --with jinja2-time copier copy ...`.

**Option 2 &mdash; install it as a persistent tool:**
If you expect to use `copier` regularly, install it once so the bare `copier`
command is always available on your `PATH`:

```bash
uv tool install --with jinja2-time copier
```

You can later upgrade it with `uv tool upgrade copier`. The commands in the rest
of this guide are written assuming you installed `copier` this way; if you
prefer Option 1, just remember to prefix them with `uvx --with jinja2-time`.

## Installing R (R projects only)

If your project's primary language is **R**, you'll also need R (and the `Rscript`
command it provides) installed and on your `PATH`. When you generate an R project,
the template automatically installs the [`renv`](https://rstudio.github.io/renv/)
package and initialises a project-local library so your R dependencies are tracked
reproducibly. That step runs `Rscript` behind the scenes, so it will fail if R
isn't installed.

Download R from [CRAN](https://cran.r-project.org/). You do **not** need Python for
an R project if you run `copier` through `uv`/`uvx` as described above.

---

Once your tools are installed, continue to
[**Building your project**](building.md).
