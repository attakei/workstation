import click


@click.group()
def cmd():
    pass


def run():
    """Endpoint of console-script
    """
    cmd.main()
