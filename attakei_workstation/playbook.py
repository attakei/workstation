"""Playbook commands.
"""
import sys
from subprocess import Popen
from typing import Tuple

import click

from .cli import cmd


@cmd.command()
@click.pass_context
def playlist(ctx: click.Context):
    """List playbooks from workstation.
    """
    for playbook in ctx.obj["ws"].glob("playbooks/*.yml"):
        click.echo(playbook.stem)


@cmd.command(context_settings={"ignore_unknown_options": True})
@click.argument("playbook")
@click.argument("extra", nargs=-1)
@click.pass_context
def play(ctx: click.Context, playbook: str, extra: Tuple[str, ...]):
    """Run playbook on workstation.
    """
    playbook_relpath = f"playbooks/{playbook}.yml"
    playbook_path = ctx.obj["ws"] / playbook_relpath
    if not playbook_path.exists():
        click.secho("Playbook is not exists", err=True, fg="red")
        ctx.exit(1)
        return
    command = ["ansible-playbook", playbook_relpath] + list(extra)
    proc = Popen(
        command,
        stdin=sys.stdin,
        stdout=sys.stdout,
        stderr=sys.stderr,
        cwd=ctx.obj["ws"],
    )
    proc.communicate()
