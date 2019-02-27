# -------------------------------------------------------------------------
#    Homebrew Shell Completion
# -------------------------------------------------------------------------
# Homebrew comes with completion definitions for the brew command. 
# Some packages also provide completion definitions for their own programs.
#
# https://docs.brew.sh/Shell-Completion
# 
if type brew &>/dev/null; then
  for COMPLETION in $(brew --prefix)/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]];
  then
    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi
fi