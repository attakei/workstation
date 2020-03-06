import importlib

from .cli import cmd


def run():
    """Endpoint of console-script
    """
    # Load subcommand modules
    importlib.import_module(".playbook", package=__name__)
    importlib.import_module(".cookiecutter", package=__name__)
    # Run command
    cmd.main()
