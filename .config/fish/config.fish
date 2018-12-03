function vim
    nvim $argv
end

function config
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end

export VISUAL=nvim
export EDITOR="$VISUAL"
