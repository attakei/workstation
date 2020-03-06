"""Cookiecutter commands.
"""
import click

from .cli import cmd


@cmd.command()
@click.pass_context
def cookiecutters(ctx: click.Context):
    """List cookiecutter tamplates from workstation.
    """
    for template in ctx.obj["ws"].glob("cookiecutters/*"):
        if template.is_dir():
            click.echo(template.name)
