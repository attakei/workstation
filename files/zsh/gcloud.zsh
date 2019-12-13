gcloud_dir=$HOME/.local/opt/google-cloud-sdk
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$gcloud_dir/path.zsh.inc" ]; then . "$gcloud_dir/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$gcloud_dir/completion.zsh.inc" ]; then . "$gcloud_dir/completion.zsh.inc"; fi
