alias xclip="xclip -selection c"
alias gits="git status"
alias mux="tmuxinator"
alias tm="tmux"
alias ls="ls --color=auto -a"
alias branch-cleanup='git branch -d $(git branch --merged | cut -c 3- | grep -v main)'
alias branch-cleanup-all='git branch -D $(git branch | cut -c 3- | grep -v main)'

alias ghpr="gh pr create"
alias python="python3"

function agi() {
  ag "import.*from.*$1" $2
}
