alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gp='git pull'
alias gcm='git checkout master'
alias gcs='git checkout -'
alias gxp='git cherry-pick'
alias gpom='git pull origin master'
alias gl='git lg'
alias gml='git mylg'

alias listbranch="echo $(parse_git_branch)"

gitfiles () {
  local commit_hash=$1;

  git show --pretty="" --name-status "${commit_hash}"
}
