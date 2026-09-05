# dotfiles

SwayFX desktop dotfiles — Catppuccin Mocha theme.

## Contents

| Path | Target |
|------|--------|
| `config/sway/config` | `~/.config/sway/config` |
| `config/waybar/config.jsonc` | `~/.config/waybar/config.jsonc` |
| `config/waybar/style.css` | `~/.config/waybar/style.css` |
| `config/wofi/style.css` | `~/.config/wofi/style.css` |
| `config/ghostty/config` | `~/.config/ghostty/config` |
| `config/mako/config` | `~/.config/mako/config` |
| `config/kanshi/config` | `~/.config/kanshi/config` |
| `config/swaylock/config` | `~/.config/swaylock/config` |

## Highlights

- **sway**: SwayFX (rounded corners, blur, shadows, animations), JP keyboard layout (`jp`, `ctrl:nocaps`), gaps + Catppuccin colors, fcitx5, swayidle suspend-then-lock
- **waybar**: kanji workspace icons (一二三四五六七八九), cpu/mem/disk/temp/audio/network/tray
- **ghostty**: Catppuccin Mocha, Noto Sans Mono CJK JP, transparent + blur for SwayFX
- **wofi / mako / swaylock**: Catppuccin Mocha unified style

## Install

```sh
git clone https://github.com/souta-lab/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

`install.sh` symlinks each file into `~/.config/` (backs up existing files with `.bak.<timestamp>` suffix).

## Requirements

- swayfx (or sway — SwayFX-only options like `corner_radius`, `blur`, `shadows`, `layer_effects` are ignored or error on vanilla sway)
- waybar, wofi, mako, kanshi, swaylock
- ghostty
- fcitx5, grim, slurp, wl-clipboard, brightnessctl
- Fonts: Noto Sans CJK JP, NotoSans Nerd Font, Font Awesome 6, Noto Color Emoji
