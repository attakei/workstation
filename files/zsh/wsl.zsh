# For WSL with Arch
if [ $(cat /proc/$PPID/cmdline|sed -e 's/\x0//g') = '/init' ] ; then
    cd $HOME
fi

# X and audio
host_ip=`ip route show | grep -i default | awk '{ print $3}'`
export DISPLAY=$host_ip:0.0 #GWSL
export PULSE_SERVER=tcp:$host_ip #GWSL
