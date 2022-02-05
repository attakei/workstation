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

# Get Apache License text
apache-license () {
  curl https://apache.org/licenses/LICENSE-2.0.txt > LICENSE
}

# NeoVim using poetry virtualenv
alias nvimp='poetry run nvim'
