# zsh theme requires 256 color enabled terminal
# i.e TERM=xterm-256color
# Preview - https://www.flickr.com/photos/adelcampo/4556482563/sizes/o/
# based on robbyrussell's shell but louder!

PROMPT='%F{208}%2~%f%{$fg_bold[white]%} %(!.#.$) %{$reset_color%}'
RPROMPT='%{$fg_bold[blue]%}$(git_prompt_info) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{154}|%f%F{124}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘%b%F{154} |%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%F{154} |"
