# Automate Pre-Release
[![Issues](https://img.shields.io/github/issues/wgid-vfx/deploy-unstable-develop.svg?style=for-the-badge)](https://github.com/wgid-vfx/deploy-unstable-develop/issues)
[![MIT License](https://img.shields.io/github/license/wgid-vfx/deploy-unstable-develop.svg?style=for-the-badge)](https://github.com/wgid-vfx/blob/deploy-unstable-develop/develop/LICENSE)
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555)](https://linkedin.com/in/robvigorito)

[![Build Status](https://travis-ci.com/wgid-vfx/deploy-unstable-develop.svg?branch=develop)](https://travis-ci.com/wgid-vfx/deploy-unstable-develop)
[![GitHub tag](https://img.shields.io/github/v/tag/wgid-vfx/deploy-unstable-develop?label=Version)](https://github.com/robertvigorito/wgid-vfx/deploy-unstable-develop)

## Introduction
Automate the package deployment by referencing the TOML version furthermore updating the changelog from the latest release, update the python package version, tag, and commit changes.

## Installation
1. Clone the repo
   ```sh
   git clone https://github.com/wgid-vfx/deploy-unstable-develop
   ```
2. Install with pip
   ```sh
   pip install deploy-unstable-develop
   ```
3. Install with poetry
    ```sh
    poetry install
    ```
   
## Testing
We currently use [Tox](https://tox.readthedocs.io/en/latest/) and [PyTest](https://docs.pytest.org/en/stable/) as the unit-testing framework to test src.
1. Running test with Tox
    ```sh
    tox
    ```
2. Running test with Poetry
    ```sh
    poetry run test
    ```
   
## Contributing
Hi there! We're thrilled that you'd like to contribute to this project. Your help is essential for keeping it great.

1. Create a branch from [develop](https://github.com/wgid-vfx/tree/deploy-unstable-develop/develop).
2. Naming to begin with issue link e.g. GH-#2-my-new-shiny-feature.
3. Follow [pep-8](https://www.python.org/dev/peps/pep-0008/) coding style.
4. Make your change, add tests, and make sure the tests still pass.
5. Keep your change as focused as possible. If there are multiple changes you would like to make that are not dependent upon each other, consider submitting them as separate pull requests.
6. Write a [good commit message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) and follow commit naming convention `[GH-#2] Keep it clear and precise`.

#### Submitting a pull request

1. Make sure the tests pass on your machine (see testing above)
2. Make your change(s), add tests, and make sure the tests still pass
3. Push to your branch
4. Create a merge to develop
5. Pat your self on the back and wait for your pull request to be reviewed and merged.

## Roadmap
See the [open issues](https://github.com/wgid-vfx/deploy-unstable-develop/issues) for a list of proposed features (and known issues).

## License
Distributed under the MIT license. See `LICENSE` for more information.

## Resources
- Build, Run, Publish with [Poetry](https://python-poetry.org/)
- [Tox](https://tox.readthedocs.io/en/latest/)
- [Issue Tracker](https://github.com/wgid-vfx/deploy-unstable-develop/issues)
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute/)
- [Using Pull Requests](https://help.github.com/articles/about-pull-requests/)
- [GitHub Help](https://help.github.com)