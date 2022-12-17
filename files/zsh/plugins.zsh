# --------------------------------------
# Zplugin plugin using
# --------------------------------------
# zplugin light "b4b4r07/enhancd"
zinit light zdharma-continuum/fast-syntax-highlighting

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

# zeno.sh
zinit ice lucid depth"1" blockf
zinit light yuki-yano/zeno.zsh

if [[ -n $ZENO_LOADED ]]; then
  # ここに任意のZLEの記述を行う
  bindkey ' '  zeno-auto-snippet
  bindkey '^m' zeno-auto-snippet-and-accept-line
  bindkey '^i' zeno-completion
  bindkey '^/' zeno-ghq-cd
  bindkey '^r' zeno-history-selection
  bindkey '^x' zeno-insert-snippet
fi
