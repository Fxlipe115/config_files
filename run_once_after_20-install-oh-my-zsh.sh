#!/usr/bin/env bash
set -euo pipefail

ZSH_DIR="${ZSH:-$HOME/.oh-my-zsh}"
if [ ! -d "$ZSH_DIR" ]; then
    echo "Installing Oh My Zsh..."
    RUNZSH=no CHSH=no sh -c \
        "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
        "" --unattended --keep-zshrc
fi

CUSTOM="${ZSH_CUSTOM:-$ZSH_DIR/custom}"
[ -d "$CUSTOM/plugins/zsh-autosuggestions" ] || \
    git clone https://github.com/zsh-users/zsh-autosuggestions "$CUSTOM/plugins/zsh-autosuggestions"
[ -d "$CUSTOM/plugins/zsh-syntax-highlighting" ] || \
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$CUSTOM/plugins/zsh-syntax-highlighting"

# Make zsh the default login shell (best-effort; macOS already defaults to zsh)
ZSH_BIN="$(command -v zsh || true)"
if [ -n "$ZSH_BIN" ] && [ "$(basename "${SHELL:-}")" != "zsh" ]; then
    grep -qxF "$ZSH_BIN" /etc/shells 2>/dev/null || echo "$ZSH_BIN" | sudo tee -a /etc/shells >/dev/null 2>&1 || true
    sudo chsh -s "$ZSH_BIN" "$(id -un)" >/dev/null 2>&1 || chsh -s "$ZSH_BIN" </dev/null >/dev/null 2>&1 || true
fi
