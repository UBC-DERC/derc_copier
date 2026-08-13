# Template Features

This page lists everything the DERC template generates for a new project. For each
feature it shows which language(s) it applies to, and which broad goal it supports.

The four goals are the same ones described elsewhere in this documentation:

- **Building** &mdash; writing, testing, and running better code
  (see [Building Better Code](copier/building/index.md)).
- **Attribution** &mdash; citation, licensing, and describing your work
  (see [It's Your Work &mdash; Attribution](copier/attribution/index.md)).
- **Community** &mdash; codes of conduct, contribution guides, and documentation
  (see [Building Community](copier/community/index.md)).
- **Organization** &mdash; folder structure, package management, version control,
  and changelogs (see [Staying Organized](copier/organization/index.md)).

## What the template generates

| Feature | Language | Goal(s) |
| --- | --- | --- |
| `README.md` — project overview and badges | Both | Attribution |
| `CITATION.cff` — machine-readable citation metadata | Both | Attribution |
| `LICENSE.md` (Apache-2.0 / MIT / MPL-2.0) | Both | Attribution |
| Author and ORCID metadata (in `README` and `CITATION.cff`) | Both | Attribution |
| `pyproject.toml` — project and dependency metadata | Python | Attribution, Organization |
| `DESCRIPTION` — project and dependency metadata | R | Attribution, Organization |
| `CODE_OF_CONDUCT.md` (English / French / German) | Both | Community |
| `CONTRIBUTING.md` (GitHub projects) | Both | Community |
| `.github/workflows/actions.yml` — CI (lint and tests) | Both | Building |
| `tests/` — `pytest` / `testthat` scaffolding | Both | Building |
| Sample function (`sample_function.py` / `sample_function.R`) | Both | Building |
| `ruff` linter configuration | Python | Building |
| `.editorconfig` — consistent formatting across editors | Both | Building |
| `.vscode/extensions.json` — recommended editor extensions | Both | Building |
| `src/` package layout (`__init__.py`) | Python | Building, Organization |
| `R/` sources and `NAMESPACE` package layout | R | Building, Organization |
| `data/raw` and `data/output` folders | Both | Organization |
| `CHANGELOG.md` | Both | Organization |
| Initialised git repository with first commit and version tag | Both | Organization |
| `.gitignore` | Both | Organization |
| `.copier-answers.yml` — reproducible, updatable setup | Both | Organization |
| `renv` environment initialised and snapshotted | R | Organization |
| `.Rprofile`, `.Rproj`, `.Rbuildignore` — R project configuration | R | Organization |
| `project_setup.md` — explanation of the project layout | Both | Organization |

## Planned features

The following are offered as questions today but do not yet generate files. They are
tracked for a future update:

- **Documentation scaffolding (`mkdocs`)** — Python — *Community*
- **Quarto notebook scaffolding** — Both — *Community*
