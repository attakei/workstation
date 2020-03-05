from subprocess import Popen


Popen(["poetry", "install"]).communicate()
Popen(["git", "init", "."]).communicate()
Popen(["git", "add", "."]).communicate()
Popen(["git", "commit", "-m", "'Initial commit from cookiecutter'"]).communicate()
