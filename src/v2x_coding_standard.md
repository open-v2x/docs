# Coding standard

- General
- Python

## General

- Use spaces, not tabs.
- Avoid adding trailing whitespace as it creates noise in the diffs.

## Python

- Comments should not exceed 99 columns, code should not exceed 99 columns.
- All code must be compatible with Python 3.8 and 3.9.
- Tox check
  [flake8](https://flake8.pycqa.org/en/latest/),[isort](https://pycqa.github.io/isort/),[black](https://black.readthedocs.io/en/stable/)
  and [mypy](https://mypy.readthedocs.io/en/stable/) should not give any error or warning.
- Python code follows [PEP8 style guide](https://peps.python.org/pep-0008/).
