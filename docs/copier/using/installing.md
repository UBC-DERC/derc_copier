# Installing the Tools

`copier` is a Python command-line program, but you don't need to install Python
yourself to use it. In this guide we run `copier` through
[`uv`](https://docs.astral.sh/uv/) &mdash; a small, fast tool that can download and
run Python programs for you.

Before you build a project you'll need a few tools:

- **`git`** and **`copier`** (run via **`uv`**) are always required.
- **Python** or **R** may also be needed, depending on your project's primary
  language.

Install them in the order the sections below present them.

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

## Installing `uv`

Like the other tools, installing `uv` may be OS dependent and instructions may
change over time. `uv` is a small, free tool that installs and runs Python programs
(and manages their dependencies) for us. It is Python-specific &mdash; it does not
manage R packages &mdash; but we use it here to install and run `copier`, and it can
also manage a Python project's dependencies.

Installation instructions are [here](https://docs.astral.sh/uv/getting-started/installation/)

## Installing `copier`

Because `copier` is a Python command-line tool, `uv` can install and run it for you
&mdash; you do **not** need to use `pip`. There are two approaches, and either works.

!!! note "Why `jinja2-time`?"

    This template uses the `jinja2_time.TimeExtension` Jinja extension to stamp
    dates into your generated project. That extension must be available in the
    same environment as `copier`, so both install options below include it with
    `--with jinja2-time`. If you omit it, generation fails with
    `Copier could not load some Jinja extensions: No module named 'jinja2_time'`.

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

## Installing `python` (optional)

If you install and run `copier` through `uv` as described above, you generally **do
not** need to install Python yourself &mdash; `uv` will download and manage an
appropriate Python version for you automatically. This is especially convenient if
your project is primarily in R.

If you would still like a system-wide Python installation, there is very good
documentation online and downloads are free. Use the
[Python Downloads](https://www.python.org/downloads/) page to install Python on your
computer. Installation instructions may be OS dependent.

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
