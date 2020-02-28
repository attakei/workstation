#!/usr/bin/env python
from subprocess import Popen, PIPE


Popen("git init .".split()).communicate()
Popen("poetry install".split()).communicate()
