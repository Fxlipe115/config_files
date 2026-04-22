# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Each directory is a stow package that maps to `$HOME`:

```
zsh/    → ~/.zshrc, ~/.zprofile
vim/    → ~/.vimrc
git/    → ~/.gitconfig, ~/.gitmessage
tmux/   → ~/.tmux.conf
fonts/  → ~/.fonts/
```

## Fresh install

```bash
git clone git@github.com:Fxlipe115/config_files.git ~/config_files
cd ~/config_files
./install.sh
```

`install.sh` will:
1. Install all packages from `packages.txt` using the available package manager (`apt`, `dnf`, `brew`, `pacman`, or `zypper`)
2. Install Oh My Zsh + plugins
3. Symlink dotfiles via stow
4. Copy `.gitconfig` (first time only — update your name and email after)

## Existing machine

If dotfiles already exist, back them up before stowing:

```bash
mkdir ~/dotfiles-backup
mv ~/.zshrc ~/.zprofile ~/.vimrc ~/.tmux.conf ~/.gitmessage ~/dotfiles-backup/
mv ~/.fonts ~/dotfiles-backup/

cd ~/config_files
stow zsh vim tmux fonts
stow --ignore='.gitconfig' git
```

## Adding a new dotfile

Drop the file into the appropriate package directory mirroring its path from `$HOME`, then re-run stow:

```bash
stow zsh  # or whichever package
```

## Packages

| Tool | Notes |
|---|---|
| zsh + Oh My Zsh | `gnzh` theme, autosuggestions, syntax highlighting |
| neovim | set as default `$EDITOR` |
| eza | modern `ls` replacement |
| byobu | terminal multiplexer, launches on login |
| nvm | Node version manager |
| thefuck | command correction |
| git-delta | better git diffs |
| bat | better `cat` |
| dust | better `du` |
| fd | better `find` |
