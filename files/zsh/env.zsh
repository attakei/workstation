_os=`uname 2> /dev/null`

# Zsh History
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

# Android Studio (SDK management)
export ANDROID_SDK_ROOT="$HOME/"`if [ $_os = 'Darwin' ] ; then echo Library/; fi`"Android/sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT

# Paths
python_user_bin=`python3 -m site --user-base`/bin

path=(
    $python_user_bin(N-/)
    $HOME/.local/opt/pypy/bin(N-/)
    $HOME/.local/bin(N-/)
    $HOME/.local/node_modules/.bin(N-/)
    $ANDROID_SDK_ROOT/platform-tools(N-/)
    $ANDROID_SDK_ROOT/tools(N-/)
    $HOME/.local/sbin(N-/)
    /usr/local/sbin(N-/)
    $path
)
