# dotfiles

These are my Linux configs. I've been tweaking them for a while and figured I'd put them somewhere public in case they're useful to anyone else.

## What's here

**Kitty** - My terminal. Uses JetBrains Mono because I stare at code all day and it doesn't hurt my eyes. Background is slightly transparent (95%) with a tiny blur. I turned off all window decorations because who needs them.

**Waybar** - The bar at the top of my screen. I wanted something floating that doesn't take up much space. Left side has quick launchers for the apps I actually use (terminal, browser, Signal, Discord, Steam, Godot). Right side shows the stuff I need to keep an eye on - disk space, RAM, CPU temp, GPU temp, volume, network, clock, and a power button.

The "volume bar" is actually a custom script because I got tired of the default waybar volume module not working right with PipeWire. It shows a little ASCII bar that fills up as you change volume.

**Fastfetch** - Runs when I open a terminal. I found a black hole ASCII art somewhere and thought it looked cool, so I themed the whole thing around that. Uses Tokyo Night colors because they're easy on the eyes.

## The look

Everything uses Tokyo Night colors (dark blue/purple vibe) except Kitty which uses Matugen to pull colors from my wallpaper. The bar has this "floating island" thing going on with rounded corners.

## Installing

If you want to use these:

```bash
# Clone somewhere temporary
git clone https://github.com/dredarius/dotfiles.git /tmp/dotfiles
cp -r /tmp/dotfiles/.config ~/.config
```

Or if you want to manage it as a bare repo (what I do):

```bash
git init ~
git remote add origin https://github.com/dredarius/dotfiles.git
git fetch
git checkout master
```

**Warning:** This repo is rooted at `$HOME`. Be careful with `git status` and `git add` - don't commit stuff you don't mean to.

## Dependencies

You'll need:
- `kitty` - the terminal
- `waybar` - the bar
- `fastfetch` - the fetch thing
- `ttf-jetbrains-mono-nerd` - font with icons
- `ttf-ibm-plex-mono-nerd` - another font

Optional:
- `nvidia-utils` - for GPU temp in the bar
- `wireplumber` / `pavucontrol` - for volume control

On Arch:
```bash
sudo pacman -S kitty waybar fastfetch
yay -S ttf-jetbrains-mono-nerd ttf-ibm-plex-mono-nerd
```

## Random notes

- The fastfetch black hole art is in `.config/fastfetch/ascii2.txt`. I didn't make it, found it on some Japanese text art site years ago.
- The waybar volume script is at `.config/waybar/scripts/volume-bar.sh`. It reads from PipeWire and draws a little bar with Unicode block characters.
- I use Godot, not GameMaker, but the launcher is named `launch-gamemaker.sh` from back when I was using GameMaker. Never got around to renaming it.

Feel free to take whatever you want from here. Modify it, break it, make it yours.
