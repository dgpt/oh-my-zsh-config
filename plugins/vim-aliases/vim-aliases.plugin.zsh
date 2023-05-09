function git-master-or-main() {
  [ -f "$(git rev-parse --show-toplevel)/.git/refs/heads/master" ] && echo master || echo main
}

function git-modified-files() {
  git status --porcelain | awk '{print $2}'
}

function git-committed-files() {
  git diff --name-only origin/main
}

function vimm() {
  vim $(git-modified-files)
}

function vimc() {
  vim $(git-committed-files)
}

# tmux aliases
alias vix="tmux new vim"
alias vixc="tmux new vimc"
alias vixm="tmux new vimm"
alias vimx="tmux new -As vim vim"
alias vimxc="tmux new -As vim vimc"
alias vimxm="tmux new -As vim vimm"
alias vims="vim -S"

alias -s rb=vix
alias -s js=vix
alias -s json=vix
