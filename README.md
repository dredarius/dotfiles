# 🏠 dotfiles

<p align="center">
  <img src="https://img.shields.io/badge/OS-Linux-7dcfff?style=flat-square&logo=linux&logoColor=white" />
  <img src="https://img.shields.io/badge/WM-Wayland-bb9af7?style=flat-square&logo=wayland&logoColor=white" />
  <img src="https://img.shields.io/badge/Terminal-Kitty-9ece6a?style=flat-square&logo=gnu-bash&logoColor=white" />
  <img src="https://img.shields.io/badge/Bar-Waybar-e0af68?style=flat-square&logo=polywork&logoColor=white" />
</p>

<p align="center">
  <b>Personal Linux configuration files</b><br/>
  <sub>Managed as a bare-style git repo rooted at <code>$HOME</code></sub>
</p>

---

## 📦 What's Inside

| Component | Purpose | Config |
|-----------|---------|--------|
| 🐱 **Kitty** | GPU-accelerated terminal emulator | [`.config/kitty/`](.config/kitty/) |
| 📊 **Waybar** | Tokyo Night styled Wayland bar | [`.config/waybar/`](.config/waybar/) |
| 🚀 **Fastfetch** | "Last Starfighter" cosmic HUD | [`.config/fastfetch/`](.config/fastfetch/) |

---

## 🐱 Kitty Configuration

> GPU-accelerated terminal with Matugen Material You colors

```yaml
Font:        JetBrains Mono 9pt (Bold/Italic variants)
Tabs:        Powerline-style at top, shows split count
Opacity:     95% background with blur radius 2
Decorations: None (hide_window_decorations yes)
Padding:     Zero margins/padding
Cursor:      Blinking with trail (16)
Colors:      Matugen Material You scheme (colors.conf)
```

**Color Scheme Highlights:**
| Role | Color |
|------|-------|
| Foreground | `#e0e3e8` |
| Background | `#101417` |
| Cursor | `#97ccf8` |
| Accent | `#97ccf8` |

---

## 📊 Waybar Setup

> Dionysus-inspired floating islands with Tokyo Night palette

### Layout Overview

```
┌─────────────────────────────────────────────────────────────────────┐
│ [] [] [] [ﭮ] [] []    [󰋊] [󰍛] [󰔏] [󰍹] [󱄠] [󰈀] [] [󰤆] │
│ Kitty Firefox Signal Discord Steam Godot  Disk RAM CPU GPU Vol Net Clock Power │
└─────────────────────────────────────────────────────────────────────┘
            │                                           │
     Left (Launchers)                         Right (Status)
```

### Left Modules — Launchers

| Icon | App | Command | Border Color |
|------|-----|---------|--------------|
|  | Kitty | `kitty` | `#cfc9c2` |
|  | Firefox | `firefox` | `#e0af68` |
|  | Signal | `signal-desktop` | `#7dcfff` |
| ﭮ | Discord | `discord` | `#bb9af7` |
|  | Steam | `steam` | `#9ece6a` |
|  | Godot | `godot` | `#e0af68` |

### Right Modules — Status

| Module | Display | Color |
|--------|---------|-------|
| Disk | `󰋊 {percentage_used}%` | `#7dcfff` |
| Memory | `󰍛 {percentage}%` | `#bb9af7` |
| CPU Temp | `󰔏 {temperatureC}°C` | `#e0af68` |
| GPU Temp | `󰍹 {temp}°C` (nvidia-smi) | `#e0af68` |
| Volume | `󱄠` (custom bar script) | `#f7768e` |
| Network | `󰈀` / `󰖩 {essid}` / `󰕑` | `#9ece6a` |
| Clock | ` {:%I:%M %p}` | `#cfc9c2` |
| Power | `󰤆` (powermenu) | `#f7768e` |

### Styling

```css
Font:       IBM Plex Mono 11px bold
Background: rgba(26, 27, 38, 0.95)  /* Tokyo Night bg */
Border:     1px solid #7aa2f7       /* Tokyo Night blue */
Radius:     4px (groups), 2px (modules)
```

### Scripts

Located in `.config/waybar/scripts/`:

| Script | Purpose |
|--------|---------|
| `volume-bar.sh` | Custom volume display with PipeWire |
| `powermenu.sh` | Power menu launcher |
| `workspaces.sh` | Workspace indicator |
| `launch-gamemaker.sh` | Godot launcher helper |
| `restart.sh` | Waybar restart utility |

---

## 🚀 Fastfetch Config

> "Last Starfighter Cockpit" — Tokyo Night HUD with black hole ASCII

**Design:**
- Double-panel box layout with Unicode borders
- Left: SYS.CORE (identity, uptime, system specs)
- Right: POWER + SIGNATURE (disk, memory bars)
- Footer: Color palette swatches + "STATION ACTIVE"

**Logo:** Custom black hole ASCII art (`ascii2.txt`)
- Braille/Unicode cosmic void design
- Event horizon with accretion disk aesthetic

**Color Palette (Tokyo Night):**
| Element | Hex | Usage |
|---------|-----|-------|
| `#7dcfff` | Cyan | Primary accents |
| `#bb9af7` | Purple | Secondary |
| `#9ece6a` | Green | Active/online |
| `#e0af68` | Amber | Warm accents |
| `#f7768e` | Pink/Red | Warnings |
| `#565f89` | Blue-grey | Borders |
| `#1a1b26` | Dark | Background |

---

## 📋 Dependencies

### Required

```bash
# Core applications
sudo pacman -S kitty waybar fastfetch

# Fonts
yay -S ttf-jetbrains-mono-nerd ttf-ibm-plex-mono-nerd
```

### Optional

| Package | Purpose |
|---------|---------|
| `nvidia-utils` | GPU temperature (nvidia-smi) |
| `wireplumber` | PipeWire volume control |
| `pavucontrol` | GUI volume mixer |
| `godot` | Game engine launcher |

---

## 🚀 Installation

### Quick Setup

```bash
git clone https://github.com/dredarius/dotfiles.git /tmp/dotfiles-tmp
cp -r /tmp/dotfiles-tmp/.config ~/
```

### Bare Repo Method

```bash
git init ~
git remote add origin https://github.com/dredarius/dotfiles.git
git fetch
git checkout master
```

> ⚠️ **Note:** The repo root is `$HOME`. Use with care!

---

## 🎨 Theme Overview

| Component | Theme |
|-----------|-------|
| Terminal | Matugen Material You |
| Bar | Tokyo Night |
| Fetch | Tokyo Night + Cosmic Black Hole |

---

## 📝 License

Configs shared as-is. Borrow, modify, make them yours.

---

<p align="center">
  <sub>Made with 🩵 on Linux</sub>
</p>
