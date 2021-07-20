function git-modified-files() {
  git status --porcelain | awk '{print $2}'
}

function git-committed-files() {
  git diff --name-only origin/master
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

alias -s rb=vix
alias -s js=vix
alias -s json=vix
