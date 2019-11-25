export NVM_DIR="$HOME/.nvm"

# For Archlinux
if [ -s "/usr/share/nvm/init-nvm.sh" ] ; then 
    source /usr/share/nvm/init-nvm.sh
fi
# For macOS
if [ -s "/usr/local/opt/nvm/nvm.sh" ] ; then 
    source "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
fi
if [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] ; then
    source "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
fi
