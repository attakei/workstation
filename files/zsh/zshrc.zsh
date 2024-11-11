# --------------------------------------
# - Zsh interactive shell settings for me (cross-env)
# --------------------------------------

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
source "${HOME}/ws/files/zsh/zinit-plugins.zsh"

setopt share_history

# Custom settings for shell
source "$HOME/ws/files/zsh/commands.zsh"
@source prompt keybinds

# Programming language environments
# path=(
#   $path
# )

# Load machine-local .zshenv
if [ -e "$HOME/.zshrc.local" ] ; then
    source "$HOME/.zshrc.local"
fi

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
