function git_rm_merged
  git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d
end
