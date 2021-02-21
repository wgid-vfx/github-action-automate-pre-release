"""Main module."""
import toml
import os
import requests
import re
import logging
import subprocess


logging.basicConfig(level=logging.INFO)


# Grab the TOML version
COMPILED_VERSION_PATTERN = re.compile(r"^__version__ = (.+$)", flags=re.MULTILINE)
with open(os.path.join(os.path.dirname(os.path.dirname(__file__)), "pyproject.toml"), "r") as open_toml_file:
    VERSION = toml.load(open_toml_file)["tool"]["poetry"]["version"]


# Update the python dist with TOML version
for folder, sub_folder, files in os.walk(os.path.curdir):
    for _file in files:
        if not os.path.basename(_file) == "__init__.py":
            continue

        full_file_path = os.path.join(folder, _file)
        with open(full_file_path, "r+") as open_file:
            logging.info("Updated `%s` __version__ -> `%s`", full_file_path, VERSION)
            content = open_file.read()
            if COMPILED_VERSION_PATTERN.search(string=content):
                new_version_line = f"__version__ = \"{VERSION}\""
                new_init = COMPILED_VERSION_PATTERN.sub(string=content, repl=new_version_line)
                open_file.seek(0)
                open_file.write(new_init)


# Update the change log from latest release


# Tag new repo based off the TOML version
subprocess.run(["git", "tag", VERSION])
subprocess.run(["git", "commit", "-am", f"Automate Release Update: {VERSION}"])


# Commit and push changes