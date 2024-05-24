# aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# source global definitions
if [ -f /etc/zsh/zshrc ]; then
    source /etc/zsh/zshrc
fi

# default text editor
export VISUAL=nvim
export EDITOR=nvim

# prompt
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
source ~/.git-prompt.sh
setopt PROMPT_SUBST ; PS1=' %B%F{cyan}%~%f%F{magenta}$(__git_ps1 " git:(%s)") %f%%%b '
# RPROMPT='%B%F{yellow}%t %B%F{red}%?'

# use modern completion system
autoload -Uz compinit
compinit

bindkey -v

# history config
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
