source ~/.config/antigen.zsh
autoload -U colors && colors
setopt promptsubst
autoload -Uz compinit
compinit
autoload promptinit
promptinit
prompt suse
bindkey -v

# antigen
antigen bundle zsh-users/zsh-autosuggestions
#antigen theme denysdovhan/spaceship-prompt
#SPACESHIP_PROMPT_ORDER=(
#  time          # Time stamps section
#  user          # Username section
#  dir           # Current directory section
#  host          # Hostname section
#  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
#  venv          # virtualenv section
#  pyenv         # Pyenv section
#  terraform     # Terraform workspace section
#  exec_time     # Execution time
#  line_sep      # Line break
#  vi_mode       # Vi-mode indicator
#  jobs          # Background jobs indicator
#  exit_code     # Exit code section
#  char          # Prompt character
#)
#SPACESHIP_PROMPT_ADD_NEWLINE=false

antigen apply


HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'


# aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cim='nvim'
alias vim='nvim'
alias v='nvim'
alias xboxdrv='xboxdrv -d -c .config/xboxdrv/config'
alias ll='ls -l'
alias la='ls -la'
alias ls='ls --color=auto -h'
alias ..='cd ..'
alias q='exit'
alias wq='exit'


# Remove mode switching delay.
KEYTIMEOUT=5

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
   echo -ne '\e[5 q'
}

