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

# Handle zellij session
zellijp () {
  name=$(basename `pwd`)
  exists=$(zellij list-sessions|grep $name|wc -l)
  if [ $exists = "1" ] ; then
    zellij attach $name
  else
    zellij -s $name
  fi
}

# Get Apache License text
apache-license () {
  curl https://apache.org/licenses/LICENSE-2.0.txt > LICENSE
}

# NeoVim using poetry virtualenv
nvimp () {
  if [ -e "poetry.lock" ] ; then
    poetry run nvim $@
  elif [ -e "Pipfile.lock" ] ; then
    pipenv run nvim $@
  else
    nvim $@
  fi
}
