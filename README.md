# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io). One source of
truth across machines, with three independent dimensions of variation:

| Dimension | Values | Drives |
|---|---|---|
| **OS** | `darwin` / `linux` | Homebrew vs native package manager, OS-specific paths |
| **profile** | `work` / `personal` | which Bitwarden SSH-key items are used |
| **modules** | `node`, `python`, `dotnet`, … | opt-in shell config + extra packages |

All three are asked **once per machine** on first `chezmoi init` and stored in
chezmoi's local config (`~/.config/chezmoi/chezmoi.toml`).

## Fresh install

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Fxlipe115/config_files
```

chezmoi will prompt for the profile, the enabled modules, the git name/email,
and whether to use Bitwarden, then:

1. Run `run_once_before_10-install-packages.sh` — installs Homebrew + the
   `Brewfile` on macOS, or `packages.txt` via the native package manager on
   Linux, plus any enabled module package lists.
2. Symlink/write the dotfiles (templated per OS/profile/modules).
3. Run `run_once_after_20-install-oh-my-zsh.sh` — installs Oh My Zsh + plugins.

**Using Bitwarden?** The SSH-key files are pulled from your vault during step 2,
so `bw` must be installed and unlocked *before* the command above. Install
Homebrew if needed, then:

```bash
brew install bitwarden-cli
bw login && export BW_SESSION="$(bw unlock --raw)"
```

To preview without changing anything: `chezmoi init Fxlipe115/config_files` then
`chezmoi apply --dry-run --verbose`.

## Profiles

The `profile` answer (`work` / `personal`) selects which Bitwarden SSH-key items
are used (see below). Change it later with:

```bash
chezmoi init   # re-prompts, or edit ~/.config/chezmoi/chezmoi.toml
chezmoi apply
```

## Modules

A module is an opt-in bundle: a shell fragment and/or an extra package list,
applied only when its name is in the machine's `modules` list.

Available shell modules (`dot_config/zsh/modules/`, sourced by `.zshrc`):

| Module | Provides |
|---|---|
| `node` | nvm |
| `gcloud` | Google Cloud SDK path + completion |
| `python` | PDM / `PYTHONPATH` |
| `ruby` | gems in `~/gems` |
| `texlive` | TeX Live on PATH (Linux) |
| `dotnet` | .NET tools on PATH, telemetry opt-out |

Package-only modules add a `Brewfile.<name>` (macOS) and/or
`packages.<name>.txt` (Linux), installed by the setup script when enabled:

| Module | Provides |
|---|---|
| `salesforce` | Salesforce/Apex VS Code extensions |
| `jira` | `jira-cli` |

### Adding a module

1. Add `<name>` to the module choice list in `.chezmoi.toml.tmpl` so it appears in the prompt.
2. If it has shell config, create `dot_config/zsh/modules/<name>.zsh` and add
   `<name>` to `knownModules` in `.chezmoidata.yaml`.
3. If it has packages, create `Brewfile.<name>` and/or `packages.<name>.txt`.
4. Select `<name>` on machines that need it (`chezmoi init` to re-prompt, or edit the chezmoi config).

## Secrets (Bitwarden)

When Bitwarden is enabled, chezmoi pulls your SSH keys at `chezmoi apply` time
via the `bw` CLI — nothing secret is stored in this repo.

Prerequisites on a new machine:

```bash
brew install bitwarden-cli          # macOS (or your package manager)
export BW_SESSION="$(bw login --raw)"   # or: bw unlock --raw
```

Required Bitwarden items (`<profile>` is `work` or `personal`):

| Item name | Type | Used for |
|---|---|---|
| `ssh-github-<profile>` | SSH key | `~/.ssh/github` (GitHub auth) |
| `ssh-git-signing-<profile>` | SSH key | `~/.ssh/git-signing` (commit signing) |

Create and edit these items in the Bitwarden app.

If Bitwarden is disabled, the SSH keys are left for you to set up manually. The
git name and email are always set from the `chezmoi init` prompts.

### SSH keys

Keys are written with purpose-based names and wired up by a managed
`~/.ssh/config`:

| File | Purpose |
|---|---|
| `~/.ssh/github` | GitHub authentication (`Host github.com → IdentityFile`) |
| `~/.ssh/git-signing` | git commit signing (`user.signingkey`) |

## macOS packages (Brewfile)

`Brewfile` is the macOS base: taps, CLI formulae, casks (GUI apps), VS Code
extensions and global npm packages.

```bash
brew bundle --file=Brewfile          # install everything
brew bundle check --file=Brewfile    # see what's missing
brew bundle dump --file=Brewfile --force --describe   # regenerate after installing new stuff
```

GUI apps tracked as casks include VS Code, iTerm2, Docker Desktop, DBeaver,
Postman, Rider, WebStorm, Firefox, Chrome and Rectangle.

`packages.txt` is the cross-platform CLI list used on non-macOS systems.

## Editing

```bash
chezmoi edit ~/.zshrc      # edit the source of a managed file
chezmoi apply              # apply pending changes to $HOME
chezmoi cd                 # drop into the source repo
chezmoi diff               # preview what apply would change
```

## Layout

```
.chezmoi.toml.tmpl      prompts (profile, modules, bitwarden) → chezmoi config
.chezmoidata.yaml       registry of known shell modules
.chezmoiignore          excludes repo files + disabled modules + secrets
dot_*                   dotfiles (→ ~/.*), *.tmpl are templated
dot_config/zsh/modules/ per-module shell fragments
private_dot_ssh/        SSH config + Bitwarden-backed keys (0600/0700)
run_once_*              setup scripts (packages, Oh My Zsh)
Brewfile, Brewfile.*    macOS package lists (base + per module)
packages.txt            Linux CLI package list
```
