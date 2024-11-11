# --------------------------------------
# Configure common custom-commands and aliases
# --------------------------------------

# Aliases
alias sysu='systemctl --user'
alias apache-license='curl https://apache.org/licenses/LICENSE-2.0.txt > LICENSE'

# Run fzf from ghq directory
ghqf () {
  local selected
  selected=$(ghq list | fzf)

  if [ "x$selected" != "x" ]; then
    cd $(ghq root)/$selected
  fi
}

# For compatibility
fghq () {
  ghqf
}

# Handle zellij session
zellijp () {
  name=$(basename `pwd`)
  exists=$(zellij list-sessions -n|grep "^${name}"|wc -l)
  echo $exists
  if [ $exists = "1" ] ; then
    zellij attach -c $name
  else
    zellij -s $name
  fi
}

# NeoVim using poetry virtualenv
nvimp () {
  if [ -e "poetry.lock" ] ; then
    poetry run nvim $@
  elif [ -e "Pipfile.lock" ] ; then
    pipenv run nvim $@
  elif [ -e "uv.lock" ] ; then
    uv run nvim $@
  else
    nvim $@
  fi
}

copy-editorconfig() {
  cp $HOME/ws/files/dotfiles/.editorconfig `pwd`
}

@venv () {
  if [ -e "venv/bin/activate" ] ; then
    source venv/bin/activate
  elif [ -e ".venv/bin/activate" ] ; then
    source .venv/bin/activate
  elif [ -e "env/bin/activate" ] ; then
    source env/bin/activate
  else
    echo "This is not venv workspace." >&2
  fi
}

# Load workstation zsh settings
@source () {
  # TODO: Auth find directory
  for f in $@ ; do
    source ~/ws/files/zsh/${f}.zsh
  done
}

