# Changelog

All notable changes to the DERC Copier template are documented in this file.

This project uses [Calendar Versioning](https://calver.org/) with format `YY.MM`
for major releases and `YY.MM.N` for patch releases within the same month.

## [Unreleased]

Changes on `develop` since v26.09 that will be included in the next release.

### Added

- **Author affiliation metadata:** Added `author_affiliation` question (defaults
  to "University of British Columbia") with auto-derived `author_ror` (UBC ROR ID)
- **Data archiving:** Added `archived_data` boolean gate and `data_location` DOI
  question for linking to dataset repositories (Zenodo, Borealis, Dataverse)
- **Documentation scaffolding:** `include_quarto` now generates `document.qmd`
  with full author/affiliation metadata; `include_mkdocs` generates
  `mkdocs.yaml` and `docs/index.md`
- **Issue templates:** Added bug report, enhancement, and documentation issue
  templates in `.github/ISSUE_TEMPLATE/`
- **CONTRIBUTING.md:** Added contribution guide to the repository
- **Attribution docs:** Split into separate pages (citation.md, describing.md,
  licensing.md) with validation links and complete examples
- **ctt.toml:** Added test scenarios for mkdocs/quarto combinations

### Changed

- **Code of Conduct:** Consolidated three language-specific files into single
  `CODE_OF_CONDUCT.md.jinja` with Jinja language switching
- **Generated R workflow:** Updated action pins to v2.12.1 (`r-lib/actions`)
- **Generated Python workflow:** Updated action pins (checkout v6.0.2, setup-uv v8.1.0)
- **README:** Added text about `renv restore` and `uv sync` for environment setup
- **copier directory:** Renamed from `copier_include` to `copier`

### Fixed

- **Validation workflow:** Updated copier include directory reference

---

## [v26.09] - 2026-09-09

### Added

- **Funding recognition:** Added information about recognizing funders with
  NSERC, CIHR, SSHRC badges and bilingual acknowledgement text
- **Screencasts:** Added screencast videos and UBC logo to README
- **mkdocs scaffolding:** Added mkdocs framework to generated projects

### Changed

- **Gitignore:** Consolidated multiple `.gitignore` files into single file;
  improved handling for generated projects
- **git_use question:** Improved question wording and behavior
- **Contribution guide:** Moved to templates and fixed GitHub Actions

---

## [v26.08.4] - 2026-08-21

### Fixed

- **Jinja2 error:** Fixed template rendering error

---

## [v26.08.3] - 2026-08-21

### Fixed

- **Tag synchronization:** Fixed tag sync issue

---

## [v26.08.2] - 2026-08-21

### Added

- **Quarto support:** Added empty quarto file scaffold
- **`other` language support:** Added elements for non-R/Python projects
- **`.env` template:** Added `.env-template` file with informational link
- **DOI archiving:** Updated DOI archiving and use

### Changed

- **Setup instructions:** Moved setup instructions into README
- **User messages:** Cleaned up after-copy message with git changes
- **project_name:** Removed duplicate `when` condition

### Fixed

- **Git initialization:** Re-added git initialization that was accidentally removed

---

## [v26.08.1] - 2026-08-13

### Added

- **R language support:**
  - Added DESCRIPTION and NAMESPACE files
  - Added R sample function and test file
  - Added testthat setup and R-specific actions workflow
  - Added `.Rbuildignore` and `.Rprofile`
  - Added renv framework with initialization script
- **Python improvements:**
  - Added sample function to Python projects
  - Updated default test file
- **Documentation site:**
  - Added mkdocs-material site with UBC styling
  - Added best practices documentation stubs
  - Added comprehensive project features documentation
  - Added installation and building documentation
- **Questions:**
  - Added mkdocs, language, and quarto questions
  - Added question profile system (minimum/recommended/ask)
- **CI/CD:**
  - Added cross-OS install-flow GitHub Action
  - Added CalVer tagging on successful e2e tests
  - Added documentation deployment workflow
- **Template features:**
  - Added `project_setup.md` to generated projects
  - Added language-specific gitignore files

### Changed

- **CHANGELOG template:** Updated to use project date
- **README:** Fixed copier command syntax
- **project_name:** Fixed instances where `project_title` should be used
- **Testing:** Updated ctt tests and fixed project_name question
- **Styling:** Changed mkdocs style to more closely match UBC branding
- **Git tagging:** Added email and username to git tags

### Fixed

- **R function:** Fixed email address format
- **Ruff:** Fixed linting issues
- **jinja2_time:** Fixed installation in CI
- **Windows compatibility:** Fixed double quotes issue
- **runner.temp:** Fixed environment variable management for uv tool
- **rtools:** Fixed timeout issues by skipping rtools installation
- **Rprofile:** Fixed activate/.Rprofile check

---

## [v26.08] - 2026-07-31

Initial CalVer release of the DERC Copier template.

### Added

- **Core template structure:**
  - `copier.yml` with question profiles
  - `CITATION.cff.jinja` template with validation
  - `README.md.jinja` with badges
  - `CHANGELOG.md.jinja` template
  - `CODE_OF_CONDUCT.md` options (English, French, German)
- **License options:** Apache 2.0, MIT, MPL 2.0, No License
- **Python project scaffolding:**
  - `pyproject.toml` template
  - `src/` directory structure
  - pytest configuration
- **GitHub Actions:**
  - Validation workflow (ruff, ctt, cffconvert)
- **Development tooling:**
  - copier-template-tester (ctt) configuration
  - ruff linting
  - cffconvert validation

### Features

- Question profile system with minimum/recommended/ask levels
- Language selection (Python, R, other)
- Git platform selection (GitHub, GitLab, Bitbucket)
- Lifecycle badges
- ORCID integration
- Post-generation git initialization with CalVer tagging

---

[Unreleased]: https://github.com/UBC-DERC/derc_copier/compare/v26.09...HEAD
[v26.09]: https://github.com/UBC-DERC/derc_copier/compare/v26.08.4...v26.09
[v26.08.4]: https://github.com/UBC-DERC/derc_copier/compare/v26.08.3...v26.08.4
[v26.08.3]: https://github.com/UBC-DERC/derc_copier/compare/v26.08.2...v26.08.3
[v26.08.2]: https://github.com/UBC-DERC/derc_copier/compare/v26.08.1...v26.08.2
[v26.08.1]: https://github.com/UBC-DERC/derc_copier/compare/v26.08...v26.08.1
[v26.08]: https://github.com/UBC-DERC/derc_copier/releases/tag/v26.08
