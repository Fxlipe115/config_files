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
# Taps
# ---------------------------------------------------------------------------
tap "localstack/tap"
tap "rafaelswi/menubarusb"

# ---------------------------------------------------------------------------
# CLI formulae
# ---------------------------------------------------------------------------
# Search tool like grep, but optimized for programmers
brew "ack"
# Static checker for GitHub Actions workflow files
brew "actionlint"
# Interpreted, interactive, object-oriented programming language
brew "python@3.14"
# Thin wrapper around the `aws` command-line interface for use with LocalStack
brew "awscli-local"
# Text-based UI library
brew "ncurses"
# Bourne-Again SHell, a UNIX command interpreter
brew "bash"
# Clone of cat(1) with syntax highlighting and Git integration
brew "bat"
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
# Feature-rich command-line (CLI) client for Atlassian Jira
brew "ankitpokhrel/jira-cli/jira-cli"
# Pager program similar to more
brew "less"
# A fully functional local AWS cloud stack
brew "localstack/tap/localstack-cli"
# Rainbows and unicorns in your console!
brew "lolcat"
# Fast, highly customisable system info script
brew "neofetch"
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

# ---------------------------------------------------------------------------
# Casks — fonts
# ---------------------------------------------------------------------------
cask "font-meslo-lg-nerd-font"

# ---------------------------------------------------------------------------
# Casks — menu bar / window management / system
# ---------------------------------------------------------------------------
# Enable Windows-like alt-tab
cask "alt-tab"
# Move and resize windows using keyboard shortcuts or snap areas
cask "rectangle"
# System monitor for the menu bar
cask "stats"
# Track your USB devices in the macOS menu bar
cask "rafaelswi/menubarusb/menubarusb"

# ---------------------------------------------------------------------------
# Casks — security / GPG
# ---------------------------------------------------------------------------
# Secure and free password manager for all of your devices
brew "bitwarden-cli"
# Apple Mail plugin for GnuPG encrypted e-mails
cask "free-gpgmail"
# Tools to protect your files
cask "gpg-suite-no-mail"

# ---------------------------------------------------------------------------
# Casks — dev tools & GUI apps
# (installed manually before; tracked here so the next machine gets them)
# ---------------------------------------------------------------------------
# Open-source code editor
cask "visual-studio-code"
# Terminal emulator as alternative to Apple's Terminal app
cask "iterm2"
# App to build and share containerised applications and microservices
cask "docker-desktop"
# Universal database tool and SQL client
cask "dbeaver-community"
# Collaboration platform for API development
cask "postman"
# Cross-platform .NET IDE
cask "rider"
# JavaScript IDE
cask "webstorm"
# JDK from the Eclipse Foundation (Adoptium)
cask "temurin@21"
# Android SDK component
cask "android-platform-tools"
# Web browser
cask "firefox"
# Web browser
cask "google-chrome"

# ---------------------------------------------------------------------------
# VS Code extensions
# ---------------------------------------------------------------------------
vscode "aaron-bond.better-comments"
vscode "anthropic.claude-code"
vscode "atlassian.atlascode"
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
