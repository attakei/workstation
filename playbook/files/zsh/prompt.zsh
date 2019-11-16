# --------------------------------------
# Prompt configuration
# --------------------------------------
setopt prompt_subst

zplugin snippet OMZ::themes/sunrise.zsh-theme
PROMPT='%B%F{5}$PROMPTPREFIX %2~%f $(custom_git_prompt)
%B»%b '
