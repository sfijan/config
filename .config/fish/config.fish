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
# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
    set last_status $status

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal

    printf '%s ' (__fish_git_prompt)

    set_color normal
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

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

