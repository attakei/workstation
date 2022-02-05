# --------------------------------------
# Configure common custom-commands and aliases
# --------------------------------------

# Run fzf from ghq directory
fghq () {
  local selected
  selected=$(ghq list | fzf)

  if [ "x$selected" != "x" ]; then
    cd $(ghq root)/$selected
  fi
}

# NeoVim using poetry virtualenv
alias nvimp='poetry run nvim'
