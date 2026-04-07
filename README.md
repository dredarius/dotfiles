dotfiles

My Linux configuration files. Managed as a bare git repo rooted at $HOME.

Kitty terminal, Waybar status bar, Fastfetch startup screen. Tokyo Night
color scheme.

To install:

    git clone https://github.com/dredarius/dotfiles.git /tmp/dotfiles
    cp -r /tmp/dotfiles/.config ~/.config

Or manage as a bare repo:

    git init ~
    git remote add origin https://github.com/dredarius/dotfiles.git
    git fetch
    git checkout master

Requires: kitty, waybar, fastfetch, ttf-jetbrains-mono-nerd,
ttf-ibm-plex-mono-nerd
