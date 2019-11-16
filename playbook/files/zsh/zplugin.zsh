# --------------------------------------
# Zplugin plugin using
# --------------------------------------
zplugin light "b4b4r07/enhancd"
zplugin light "zsh-users/zsh-completions"
zplugin light "zsh-users/zsh-syntax-highlighting"

# For using fzf
zplugin ice from"gh-r" as"command"
zplugin load junegunn/fzf-bin

# For using OMZ theme
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin cdclear -q # <- forget completions provided up to this moment
