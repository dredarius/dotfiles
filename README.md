# dotfiles

Personal configuration files for my Linux desktop — managed as a bare-style git repo rooted at `$HOME`.

## Setup

| Tool | Purpose |
|------|---------|
| **Kitty** | Terminal emulator |
| **Waybar** | Wayland status bar |
| **Fastfetch** | System info fetch |

## Kitty

- Font: JetBrains Mono 9pt (with Bold/Italic variants)
- Powerline tab bar (top edge), tab title shows window count when split
- 95% background opacity with blur radius 2
- No window decorations, no padding
- Colors sourced from `colors.conf`

## Waybar

Floating island layout — two groups anchored to the top of the screen.

**Left — Launchers**
- Kitty, Firefox, Signal, Discord, Steam

**Right — Status**
- Disk usage · RAM · CPU temp · GPU temp (nvidia-smi) · Volume · Network · Clock · Power menu

Styled with IBM Plex Mono, dark semi-transparent background (`rgba(0,10,0,0.75)`), rounded corners, and a subtle green border. Scripts live in `.config/waybar/scripts/`.

## Fastfetch

Custom layout inspired by [Catnap](https://github.com/iinsertNameHere/catnap), with a personal logo (`OCP.png`). Displays:

- User · Uptime · OS · Kernel · Arch · Terminal · Shell · Device · CPU
- Disk usage + bar · RAM usage + bar
- Color swatch footer

Color scheme: purple `#B388FF` / pink `#FF80AB` / cyan `#00BCD4` / amber `#FF9800`.

## Dependencies

- A [Nerd Font](https://www.nerdfonts.com/) for icons (JetBrains Mono Nerd Font / IBM Plex Mono Nerd Font)
- `waybar`, `kitty`, `fastfetch`
- `nvidia-smi` for GPU temperature module
- `wpctl` (PipeWire) for volume control
- `pavucontrol` for the volume click action

## Installation

Clone directly into `$HOME` (the repo root **is** your home directory):

```bash
git clone https://github.com/dredarius/dotfiles.git /tmp/dotfiles-tmp
cp -r /tmp/dotfiles-tmp/.config ~/
```

Or if you want to manage it the same way (git repo at `$HOME`):

```bash
git init ~
git remote add origin https://github.com/dredarius/dotfiles.git
git fetch
git checkout master
```
