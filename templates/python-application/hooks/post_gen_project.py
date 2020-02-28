#!/usr/bin/env python
from subprocess import Popen


Popen("poetry install".split()).communicate()
Popen("git init .".split()).communicate()
Popen("git add .".split()).communicate()
Popen("git commit -m 'Initial commit from cookiecutter'".split()).communicate()
