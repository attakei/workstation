# --------------------------------------
# - Zsh interactive shell settings for me (cross-env)
# --------------------------------------

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
source "${HOME}/ws/files/zsh/zinit-plugins.sh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Custom settings for shell
source "$HOME/ws/files/zsh/commands.sh"
@source prompt keybinds

# Custom commands
path=(
  "$HOME/.local/bin"
  $path
)

# Programming language environments
path=(
  "$HOME/.rye/shims"
  "$HOME/.volta/bin"
  $path
)

# Load machine-local .zshenv
if [ -e "$HOME/.zshrc.local" ] ; then
    source "$HOME/.zshrc.local"
fi

