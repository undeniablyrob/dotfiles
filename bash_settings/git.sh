alias gs='git status'
alias gd='git diff'
alias gb='gitbranchformat'
alias gp='git pull'
alias gcm='git checkout master'
alias gcs='git checkout -'
alias gxp='git cherry-pick'
alias gpom='git pull origin master'
alias gl='git lg'
alias gml='git mylg'
alias listbranch='echo "$(parse_git_branch)"'
alias gitbranchformat="git branch --sort=committerdate --format='%(HEAD) %(color:white)%(refname:short)%(color:reset) - %(color:green)%(committerdate:relative) %(color:cyan dim)%(authorname) %(color:reset)'"

gitfiles () {
  local commit_hash=$1;

  git show --pretty="" --name-status "${commit_hash}"
}
