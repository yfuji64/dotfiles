# 環境変数
export LANG=ja_JP.UTF-8
autoload colors && colors

# prompt
KET=$'\U232A'
PROMPT='
%F{111}[%~]%f %F{243}%D %*%f
> '

# completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  
zstyle ':completion:*:default' menu select=1

# keybind
bindkey "^[u" undo
bindkey "^[r" redo

# cd
setopt auto_cd
DIRSTACKSIZE=20
setopt auto_pushd
setopt pushd_ignore_dups
alias ...='cd ../..'
alias ....='cd ../../..'

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
function history-all { history -E 1 }
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_verify  # able to edit before running

# others
setopt print_eight_bit
setopt interactive_comments
WORDCHARS='*?_.[]~=&;!#$%^(){}<>'
