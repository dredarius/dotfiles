dotfiles

My Linux configuration files. Managed as a bare git repo.

Kitty terminal, Waybar status bar, Fastfetch startup screen. Tokyo Night
color scheme.

Usage:

    dotfiles status
    dotfiles add .config/something
    dotfiles commit -m "message"
    dotfiles push

To install on a new system:

    git clone --bare https://github.com/dredarius/dotfiles.git ~/.dotfiles
    alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
    dotfiles checkout

Requires: kitty, waybar, fastfetch, ttf-jetbrains-mono-nerd,
ttf-ibm-plex-mono-nerd
