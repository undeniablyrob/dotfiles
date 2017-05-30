alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gcm='git checkout master'

gitfiles () {
  local commit_hash=$1;

  git show --pretty="" --name-status "${commit_hash}"
}
