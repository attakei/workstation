# For WSL with Arch
if [ $(cat /proc/$PPID/cmdline|sed -e 's/\x0//g') = '/init' ] ; then
    cd $HOME
fi
