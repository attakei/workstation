#!/usr/bin/env python
import subprocess


proc = subprocess.Popen("git init .".split())
proc.communicate()
