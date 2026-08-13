#!/usr/bin/env bash
set -euo pipefail

# Dynamically source Homebrew environment to ensure zsh is in PATH
if [ -d "/home/linuxbrew/.linuxbrew" ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [ -d "/opt/homebrew" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -d "/usr/local/bin" ]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Ensure zsh is available before continuing
if ! command -v zsh >/dev/null 2>&1; then
    echo "Error: zsh is not installed or not in PATH." >&2
    exit 1
fi

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

# Make zsh the default login shell (best-effort)
ZSH_BIN="$(command -v zsh || true)"
if [ -n "$ZSH_BIN" ] && [ "$(basename "${SHELL:-}")" != "zsh" ]; then
    grep -qxF "$ZSH_BIN" /etc/shells 2>/dev/null || echo "$ZSH_BIN" | sudo tee -a /etc/shells >/dev/null 2>&1 || true
    sudo chsh -s "$ZSH_BIN" "$(id -un)" >/dev/null 2>&1 || chsh -s "$ZSH_BIN" </dev/null >/dev/null 2>&1 || true
fi
