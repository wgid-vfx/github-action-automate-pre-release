
# TODO:
# Would like to remove this code block
define BROWSER_PYSCRIPT
import os, webbrowser, sys

from urllib.request import pathname2url

webbrowser.open("file://" + pathname2url(os.path.abspath(sys.argv[1])))
endef
export BROWSER_PYSCRIPT


BROWSER := python -c "$$BROWSER_PYSCRIPT"
.PHONY: clean clean-test clean-pyc clean-build docs help script

clean: clean-build clean-pyc clean-test ## remove all build, test, coverage and Python artifacts

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test: ## remove test and coverage artifacts
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -fr .pytest_cache

docs: ## generate Sphinx HTML documentation, including API docs
	rm -f docs/src.rst
	rm -f docs/modules.rst
	sphinx-apidoc -o docs/ src
	$(MAKE) -C docs clean
	$(MAKE) -C docs html
	$(BROWSER) docs/_build/html/index.html

test: ## run tests quickly with the default Python
	pytest

test-all: ## run tests on every Python version with tox
	tox

script:
	$(eval SCRIPTS=$(shell find ./scripts -type f -name "*"))
	@install -v -m 555 $(SCRIPTS) /software/scripts/