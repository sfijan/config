# Linux config files
## Getting started
```
echo '.cfg' >> .gitignore
git clone --bare https://github.com/sfijan/config.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
```

## Programs
### CLI
* alacritty
* zsh
* ranger
* neovim
* cmus
### DE
* xorg + xorg-init
* bspwm + sxhkb
* rofi
* lemonbar
* picon
* betterlockscreen
### Other
* libinput-gestures
* xboxdrv
* feh

## Current todo list:
- update readme
- zsh prompt
- choose DE on login
- ...
