# CLAUDE.md

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io). See `README.md` for full usage.

## Editing rules

- This is a **chezmoi source directory**. Files here map to `$HOME`; never edit `~/.zshrc` etc. directly — edit the source file and `chezmoi apply`.
- Naming: `dot_foo` → `~/.foo`, `private_` → mode 0600/0700, `*.tmpl` → Go-template (per-OS/profile/module), `run_once_*` → setup scripts.
- Three config vars (set at `chezmoi init`, stored in `~/.config/chezmoi/chezmoi.toml`): `profile` (work/personal), `modules` (comma list), `useBitwarden`.

## Common changes

- **Add a shell module**: create `dot_config/zsh/modules/<name>.zsh`, add `<name>` to `knownModules` in `.chezmoidata.yaml`.
- **Add a package module**: create `Brewfile.<name>` and/or `packages.<name>.txt`.
- **Regenerate the Brewfile**: `brew bundle dump --file=Brewfile --force --describe`.
