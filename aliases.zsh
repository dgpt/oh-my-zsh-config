alias xclip="xclip -selection c"
alias gits="git status"
alias mux="tmuxinator"
alias branch-cleanup='git branch -d $(git branch --merged | cut -c 3- | grep -v master)'
alias branch-cleanup-all='git branch -D $(git branch | cut -c 3- | grep -v master)'

function agi() {
  ag "import.*from.*$1" $2
}
