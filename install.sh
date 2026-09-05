#!/usr/bin/env bash
# Symlink dotfiles into ~/.config (with timestamped backup of existing files).
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_SUFFIX=".bak.$(date +%Y%m%d_%H%M%S)"

link() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    mv "$dest" "${dest}${BACKUP_SUFFIX}"
    echo "backup: $dest -> ${dest}${BACKUP_SUFFIX}"
  fi
  ln -sfn "$src" "$dest"
  echo "link: $dest -> $src"
}

link "$DOTFILES_DIR/config/sway/config"          "$HOME/.config/sway/config"
link "$DOTFILES_DIR/config/waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
link "$DOTFILES_DIR/config/waybar/style.css"    "$HOME/.config/waybar/style.css"
link "$DOTFILES_DIR/config/wofi/style.css"      "$HOME/.config/wofi/style.css"
link "$DOTFILES_DIR/config/ghostty/config"      "$HOME/.config/ghostty/config"
link "$DOTFILES_DIR/config/mako/config"         "$HOME/.config/mako/config"
link "$DOTFILES_DIR/config/kanshi/config"       "$HOME/.config/kanshi/config"
link "$DOTFILES_DIR/config/swaylock/config"     "$HOME/.config/swaylock/config"

echo "done."
