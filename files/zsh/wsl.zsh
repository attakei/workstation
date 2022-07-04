# For WSL with Arch
if [ $(cat /proc/$PPID/cmdline|sed -e 's/\x0//g') = '/init' ] ; then
    cd $HOME
fi

# X and audio
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0 #GWSL
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') #GWSL
