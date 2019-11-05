# 環境変数
export LANG=ja_JP.UTF-8
autoload colors && colors

# プロンプト pure使いたい
KET=$'\U232A'
PROMPT='
%F{111}[%~]%f %F{243}%D %*%f
> '

# bindkey
bindkey -v

# 補完
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  
zstyle ':completion:*:default' menu select=1

# その他のオプション
bindkey "^[u" undo
bindkey "^[r" redo
setopt print_eight_bit
setopt hist_ignore_all_dups
setopt interactive_comments
setopt auto_cd

export PATH="/usr/local/sbin:$PATH"
