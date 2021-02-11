# 環境変数
export LANG=ja_JP.UTF-8
autoload colors && colors

# prompt
KET=$'\U232A'
PROMPT='
%F{111}[%~]%f %F{243}%D %*%f
> '

# 補完
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  
zstyle ':completion:*:default' menu select=1

# keybind
bindkey "^[u" undo
bindkey "^[r" redo

# cd系
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'

# その他
setopt auto_pushd
setopt pushd_ignore_dups
setopt print_eight_bit
setopt hist_ignore_all_dups
setopt interactive_comments
WORDCHARS='*?_.[]~=&;!#$%^(){}<>'
