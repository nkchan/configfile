#la color
export CLICOLOR=true
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

case "${OSTYPE}" in
darwin*)
  # Mac
  alias ls="ls -GF"
  ;;
linux*)
  # Linux
  alias ls='ls -F --color'
  ;;
esac


##hokan
autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


#prompt
PROMPT='[%n@%m %K{green}%~%k]'

#set "tab" config
setopt auto_list
setopt auto_menu

#command run date,time memory
setopt extended_history

#set comannd after =
setopt magic_equal_subst


export EDITOR=vim
export LANG=ja_JP.UTF-8
