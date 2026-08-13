# Homebrew Bundle — macOS setup
#
# Captures the full Homebrew state: taps, CLI formulae, casks (GUI apps),
# VS Code extensions, and global npm packages.
#
# Install everything with:
#   brew bundle --file=Brewfile
#
# Regenerate after installing new things with:
#   brew bundle dump --file=Brewfile --force --describe

# ---------------------------------------------------------------------------
# Auto-tap and trust third-party repositories
# ---------------------------------------------------------------------------
["localstack/tap", "rafaelswi/menubarusb"].each do |tap_name|
  system("brew", "tap", tap_name)
  system("brew", "trust", tap_name)
end

# ---------------------------------------------------------------------------
# CLI formulae
# ---------------------------------------------------------------------------
# Search tool like grep, but optimized for programmers
brew "ack"
# Static checker for GitHub Actions workflow files
brew "actionlint"
# Thin wrapper around the `aws` command-line interface for use with LocalStack
brew "awscli-local"
# Text-based UI library
brew "ncurses"
# Bourne-Again SHell, a UNIX command interpreter
brew "bash"
# Clone of cat(1) with syntax highlighting and Git integration
brew "bat"
# Secure and free password manager for all of your devices
brew "bitwarden-cli"
# Text-based window manager and terminal multiplexer
brew "byobu"
# Core application library for C
brew "glib"
# Apjanke's fork of the classic cowsay project
brew "cowsay"
# Get a file from an HTTP, HTTPS or FTP server
brew "curl"
# Pack, ship and run any application as a lightweight container
brew "docker"
# More intuitive version of du in rust
brew "dust"
# Embeddable SQL OLAP database management system
brew "duckdb"
# Modern, maintained replacement for ls
brew "eza"
# Simple, fast and user-friendly alternative to find
brew "fd"
# Download assets from a commit, branch, or tag of GitHub repositories
brew "fetch"
# Play, record, convert, and stream select audio and video codecs
brew "ffmpeg"
# Banner-like program prints strings as ASCII art
brew "figlet"
# Free lossless audio codec
brew "flac"
# Infamous electronic fortune-cookie generator
brew "fortune"
# GitHub command-line tool
brew "gh"
# Distributed revision control system
brew "git"
# Syntax-highlighting pager for git and diff output
brew "git-delta"
# Find where a commit was merged in git
brew "git-when-merged"
# GNU Transport Layer Security (TLS) Library
brew "gnutls"
# GNU Privacy Guard (OpenPGP)
brew "gnupg"
# Java-based scripting language
brew "groovy"
# Improved top (interactive process viewer)
brew "htop"
# Lightweight and flexible command-line JSON processor
brew "jq"
# Add GitHub support to git on the command-line
brew "hub"
# Tools and libraries to manipulate images in select formats
brew "imagemagick"
# Pager program similar to more
brew "less"
# A fully functional local AWS cloud stack
brew "localstack/tap/localstack-cli"
# Rainbows and unicorns in your console!
brew "lolcat"
# Fast, highly customisable system info script
brew "fastfetch"
# Ambitious Vim-fork focused on extensibility and agility
brew "neovim"
# Port scanning utility for large networks
brew "nmap"
# Highly capable, feature-rich programming language
brew "perl"
# Python dependency management tool
brew "pipenv"
# Animated pipes terminal screensaver
brew "pipes-sh"
# Execute binaries from Python packages in isolated environments
brew "pipx"
# Cross-platform library for audio I/O
brew "portaudio"
# Interpreted, interactive, object-oriented programming language
brew "python@3.13"
# Search tool like grep and The Silver Searcher
brew "ripgrep"
# Powerful, clean, object-oriented scripting language
brew "ruby", link: false
# Display and control your Android device
brew "scrcpy"
# Prints a steam locomotive if you type sl instead of ls
brew "sl"
# Organize software neatly under a single directory tree (e.g. /usr/local)
brew "stow"
# Thin wrapper for Terraform e.g. for locking state
brew "terragrunt"
# Free software distribution for the TeX typesetting system
brew "texlive"
# Terraform version manager inspired by rbenv
brew "tfenv"
# Programmatically correct mistyped console commands
brew "thefuck"
# Extremely fast Python package installer and resolver, written in Rust
brew "uv"
# Vi 'workalike' with many additional features
brew "vim"
# Internet file retriever
brew "wget"
# zsh
brew "zsh"

# ---------------------------------------------------------------------------
# Casks & macOS-specific apps (Skipped on Linux)
# ---------------------------------------------------------------------------
if OS.mac?
  cask "font-meslo-lg-nerd-font"
  cask "alt-tab"
  cask "rectangle"
  cask "stats"
  cask "rafaelswi/menubarusb/menubarusb"
  cask "bitwarden"
  cask "free-gpgmail"
  cask "gpg-suite-no-mail"
  cask "visual-studio-code"
  cask "iterm2"
  cask "docker-desktop"
  cask "dbeaver-community"
  cask "postman"
  cask "rider"
  cask "webstorm"
  cask "temurin@21"
  cask "android-platform-tools"
  cask "firefox"
  cask "google-chrome"
  cask "whatsapp"
  cask "signal"
  cask "spotify"
  cask "vlc"
end

# ---------------------------------------------------------------------------
# VS Code extensions
# ---------------------------------------------------------------------------
vscode "aaron-bond.better-comments"
vscode "dbaeumer.vscode-eslint"
vscode "eamodio.gitlens"
vscode "emeraldwalk.runonsave"
vscode "esbenp.prettier-vscode"
vscode "formulahendry.code-runner"
vscode "fxlipe115.switch"
vscode "github.vscode-github-actions"
vscode "github.vscode-pull-request-github"
vscode "graphql.vscode-graphql-syntax"
vscode "humao.rest-client"
vscode "ionide.ionide-fsharp"
vscode "james-yu.latex-workshop"
vscode "johnpapa.vscode-peacock"
vscode "khaeransori.json2csv"
vscode "mechatroner.rainbow-csv"
vscode "meezilla.json"
vscode "ms-azuretools.vscode-containers"
vscode "ms-dotnettools.csdevkit"
vscode "ms-dotnettools.csharp"
vscode "ms-dotnettools.dotnet-interactive-vscode"
vscode "ms-dotnettools.vscode-dotnet-pack"
vscode "ms-dotnettools.vscode-dotnet-runtime"
vscode "ms-python.debugpy"
vscode "ms-python.python"
vscode "ms-python.vscode-pylance"
vscode "ms-python.vscode-python-envs"
vscode "ms-toolsai.jupyter"
vscode "ms-toolsai.jupyter-keymap"
vscode "ms-toolsai.jupyter-renderers"
vscode "ms-toolsai.vscode-jupyter-cell-tags"
vscode "ms-toolsai.vscode-jupyter-slideshow"
vscode "ms-vscode-remote.remote-containers"
vscode "ms-vscode.live-server"
vscode "ms-vsliveshare.vsliveshare"
vscode "oijusti.eol-converter"
vscode "redhat.vscode-xml"
vscode "redhat.vscode-yaml"
vscode "repreng.csv"
vscode "rvest.vs-code-prettier-eslint"
vscode "ryanluker.vscode-coverage-gutters"
vscode "sculpt0r.vsc-ava-test-runner"
vscode "steditor.line-endings"
vscode "streetsidesoftware.code-spell-checker"
vscode "usernamehw.errorlens"
vscode "vitest.explorer"

# ---------------------------------------------------------------------------
# Global npm packages
# ---------------------------------------------------------------------------
npm "corepack"
npm "pnpm"
npm "yarn"
