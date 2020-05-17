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
