if [ "$XDG_RUNTIME_DIR" = "" ] ; then
  export XDG_RUNTIME_DIR="$HOME/.local/runtime"
fi
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/docker.sock"
