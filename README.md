# dotfiles

Configs for my Linux setup. Kitty terminal, Waybar for the top bar, Fastfetch for the terminal startup screen.

Colors are mostly Tokyo Night (that dark blue/purple thing) except Kitty which pulls colors from my wallpaper with Matugen.

The black hole ASCII art in fastfetch came from some Japanese text art site years ago, not mine.

Install:
```bash
git clone https://github.com/dredarius/dotfiles.git /tmp/dotfiles
cp -r /tmp/dotfiles/.config ~/.config
```

Or use it as a bare repo rooted at $HOME (be careful):
```bash
git init ~
git remote add origin https://github.com/dredarius/dotfiles.git
git fetch
git checkout master
```

Needs: kitty, waybar, fastfetch, ttf-jetbrains-mono-nerd, ttf-ibm-plex-mono-nerd

Take what you want.
