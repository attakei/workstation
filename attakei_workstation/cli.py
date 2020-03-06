import click
from pathlib import Path


@click.group()
@click.option("--ws", default="~/ws", help="workstation directory")
@click.pass_context
def cmd(ctx, ws):
    ctx.ensure_object(dict)
    ctx.obj["ws"] = Path(ws).expanduser()
