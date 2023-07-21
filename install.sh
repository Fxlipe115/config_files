#!/usr/bin/env bash

has() { 
    [[ -x "$(command -v $1)" ]]
}

error() {
    echo $1 >&2
}

install() {
    echo "Installing $package ..."

    SUDO=''
    if [[ $EUID -ne 0 ]]; then
        SUDO='sudo'
    fi
    package=$1

    if has apt-get
    then 
        # workaroung for debian exa not being compiled with git plugin
        if [[ "$package" == "exa" ]]
        then
            $SUDO apt-get remove -y exa
            $SUDO apt-get install -y cargo
            cargo install $package
        else
            $SUDO apt-get install -y $package
        fi

    elif has dnf
    then 
        $SUDO dnf install $package

    elif has brew
    then
        brew install $package

    elif has pacman
    then 
        $SUDO pacman -S $package

    elif has zypper
    then 
        $SUDO zypper install $package

    else 
        error "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $package"
        exit -1
    fi
}

install_required_packages() {
    echo "Installing required packages..."
    packages=$(cat packages.txt)

    for package in $packages 
    do
        install $package
    done
}

install_oh_my_zsh() {
    echo "Installing zsh..."
    if [[ -d $ZSH ]]
    then
        rm -rf $ZSH
    fi
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

    # Plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}

copy_dotfiles() {
    echo "Copying dotfiles..."
    cp .vimrc .zshrc ~/
}

final_configurations() {
    echo "Finalizing..."
    byobu-enable
    zsh -l
}

install_required_packages && \
install_oh_my_zsh && \
copy_dotfiles && \
final_configurations