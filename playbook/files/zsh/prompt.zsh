function prompt_cwd {
  echo '%F{5}%~%f'
  return
}

function prompt_git {
  if [ ! -e './.git' ] ; then
    return
  fi
  prompt_str=`git branch| grep '*'| awk '{print $2}'`
  color=2
  diff_cnt=`git status -s | wc -l`
  if [ $diff_cnt -gt 0 ] ; then
    color=1
    prompt_str="${prompt_str} + ${diff_cnt}"
  fi
  echo "%F{$color}<${prompt_str}>%f"
}

setopt prompt_subst

PROMPT='`prompt_cwd` `prompt_git`
$ '