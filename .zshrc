ZSH_DISABLE_COMPFIX=true
export ZSH="/home/graeff/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
    git
    command-not-found
    zsh-autosuggestions
    # zsh-syntax-highlighting must come last according to https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
    zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Exports
export COWPATH="$COWPATH:$HOME/.cowsay"
export GEM_HOME="$HOME/gems"
export TERM=xterm-256color
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Aliases
alias gimmefortune="fortune | cowsay -n \
  -f \$(cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n1) | lolcat"
alias info="neofetch"
alias ls="exa -lFh --group-directories-first --git"
alias l="ls -a"
alias tree="ls -T"
alias please="sudo"
alias sl="sl -e \
  \$(echo \"-a\n-l\n-F\" | shuf -n \$(shuf -i 0-3 -n 1) | paste -s -d \" \")"
alias wttr="~/wttr"
alias zshconfig="vim ~/.zshrc"

# Evals
eval "$(hub alias -s)"
eval $(thefuck --alias)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Show funny haha when opening terminal
neofetch --ascii "$(gimmefortune)" | lolcat -ts 60