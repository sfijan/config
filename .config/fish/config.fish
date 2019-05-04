# Rebind nvim to vim
function vim
    nvim $argv
end


# Config git for dotfiles
function config
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end


# Setting editor to nvim
export VISUAL=nvim
export EDITOR="$VISUAL"


# Remove greeting
function fish_greeting
end
