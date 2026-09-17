# Contribute to the project

Contributions and issues are most welcome! All issues and pull requests are
handled through [GitHub](https://github.com/UBC-DERC/derc_copier/issues). 

Please check for existing issues before filing a new one. If you have a great idea but it involves big changes, please
file a ticket before making a pull request! We want to make sure you don't spend
your time coding something that might not fit the scope of the project.

## Pull Requests

We actively welcome your pull requests.

### For new validations, files or questions:

1. Create a GitHub issue proposing a change to the data/files or structures (you can stop here if you'd like).
2. Fork the repo and create your branch from `main`.
3. Modify the code as needed and add new tests (modify `.ctt.toml`) to ensure your code runs as expected.
4. Verify that there are no issues in your doc build. You can check the preview locally by entering your virtual environment and running `mkdocs serve`.
5. Address any feedback in code review promptly.

## For bug fixes

1. Create a GitHub issue identifying a bug (you can stop here if you'd like).
2. Fork the repo and create your branch from `main`.
3. Install `uv` and run `uv sync`
4. Make your code change and ensure `uv run ctt` works properly without errors.
5. Address any feedback in code review promptly.

## For "Best Practices" Documentation

1. Create a GitHub issue identifying a documentation deficiency (you can stop here if you'd like).
2. Fork the repo and create your branch from `main`.
3. Install `uv` and run `uv sync`
4. Edit documentation in the `docs` and check that it is showing up properly by running `uv run mkdocs serve`.
5. Address any feedback in code review promptly.

## Issues

We use [GitHub issues](https://github.com/UBC-DERC/derc_copier/issues) to track public bugs. Please ensure your description is
clear and has sufficient instructions to be able to reproduce the issue.

## License

By contributing to this projects code, documentation and examples you agree that your contributions will be licensed
under the [LICENSE file](LICENSE.md) in the root directory of this source tree.
