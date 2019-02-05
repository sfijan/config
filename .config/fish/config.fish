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

# Prompt
function fish_prompt --description 'Write out the prompt'
	set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '>'
    end

    echo -n -s (set_color $color_cwd) (prompt_pwd) (set_color normal) "$suffix "
end

# Remove greeting
function fish_greeting
end

# Ruby
status --is-interactive; and source (rbenv init -|psub)

# Set default scrot location to ~/Pictures/screenshots/
function screenshot
    scrot '%Y-%m-%d_%H:%M.png' -e 'mv --backup=t $f ~/Pictures/screenshots/' $argv
end

# set default xboxdrv config
#function xboxdrv
#    xboxdrv -c ~/.config/xboxdrv/config $argv
#end
