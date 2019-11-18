_os=`uname 2> /dev/null`

# Android Studio (SDK management)
export ANDROID_SDK_ROOT="$HOME/"`if [ $_os = 'Darwin' ] ; then echo Library; fi`"Android/sdk"

# Paths
python_user_bin=`python3 -m site --user-base`/bin

path=(
    $python_user_bin(N-/)
    $HOME/.local/bin(N-/)
    $HOME/.local/node_modules/.bin(N-/)
    $ANDROID_SDK_ROOT/platform-tools(N-/)
    $ANDROID_SDK_ROOT/tools(N-/)
    $path
)
