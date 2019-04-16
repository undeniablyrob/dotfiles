alias gs='git status'
alias gd='git diff'
alias gb='gitbranchformat'
alias gdmb='git_delete_merged_branches'
alias gp='git pull'
alias gcm='git checkout master'
alias gcs='git checkout -'
alias gxp='git cherry-pick'
alias gpom='git pull origin master'
alias gprom='git pull --rebase origin master'
alias gl='git lg'
alias gml='git mylg'
alias listbranch='echo "$(parse_git_branch)"'
alias gitbranchformat="git branch --sort=committerdate --format='%(HEAD) %(color:white)%(refname:short)%(color:reset) - %(color:green)%(committerdate:relative) %(color:cyan dim)%(authorname) %(color:reset)'"

git_delete_merged_branches () {
  # Delete branches that have been merged into the current branch.
  # https://stackoverflow.com/a/6127884
  local reserved_branches="(^\*|master)"
  git branch --merged | egrep -v $reserved_branches | xargs -t git branch -d
}

gitfiles () {
  # List files in a single commit
  local commit_hash=$1;

  git show --pretty="" --name-status "${commit_hash}"
}
