# Set PATH
export PATH="$HOME/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"  # Prioritize Homebrew on Apple Silicon
export PATH="/usr/local/bin:$PATH"     # Standard UNIX utilities
export PATH="$HOME/gems/bin:$PATH"     # Ruby gems
export PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"
export PATH="$HOME/go/bin:$PATH"

ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"

HYPHEN_INSENSITIVE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

# Oh-My-Zsh plugins
plugins=(
  git
  command-not-found
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Editor settings
export EDITOR='nvim'

# User configuration
alias zshconfig="nvim ~/.zshrc"
alias vimconfig="nvim ~/.config/nvim/init.lua"
alias ls="eza -l --classify=always --group-directories-first --icons=always --git"
alias l="ls -a"
tree() {
    if [ -n "$1" ]; then
        if [ -n "$2" ]; then
            eza -l --classify=always --group-directories-first --icons=always --git -T -L "$1" "$2"
        else
            eza -l --classify=always --group-directories-first --icons=always --git -T "$1"
        fi
    else
        eza -l --classify=always --group-directories-first --icons=always --git -T
    fi
}
alias please="sudo"
alias sl="sl -e \
  \$(echo \"-a\n-l\n-F\" | shuf -n \$(shuf -i 0-3 -n 1) | paste -s -d \" \" -)"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"

alias gimmefortune="fortune | cowsay -n \
  -f \$(cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n1) | lolcat"

neofetch --ascii "$(gimmefortune)" | lolcat -ts 60 # -ad 7

export TERM=xterm-256color

COWPATH="$COWPATH:$HOME/.cowsay"

#eval $(thefuck --alias)

#alias python=python3
alias sqlite=sqlite3

alias vim=nvim


alias wttr="~/wttr"

eval "$(hub alias -s)"

alias info="neofetch"

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Google Cloud SDK
if [ -f "$HOME/Downloads/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/Downloads/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc"; fi

# Python and PDM settings
eval "$(_PIPENV_COMPLETE=zsh_source pipenv)"
export PYTHONPATH="$HOME/.local/lib/python3.8/site-packages:$PYTHONPATH"

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.fonts/*.sh

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
