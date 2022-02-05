# --------------------------------------
# Zplugin plugin using
# --------------------------------------
# zplugin light "b4b4r07/enhancd"
zplugin light "zsh-users/zsh-syntax-highlighting"

# tab-complettion
zplugin light "zsh-users/zsh-completions"
autoload -U compinit && compinit

# For using fzf
zplugin ice from"gh-r" as"command"
zplugin load junegunn/fzf-bin

# For using OMZ theme
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/dotenv/dotenv.plugin.zsh
zplugin cdclear -q # <- forget completions provided up to this moment

# virtualenv
zplugin light "Tarrasch/zsh-autoenv"
