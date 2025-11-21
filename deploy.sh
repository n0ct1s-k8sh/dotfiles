#!/usr/bin/env bash

set -euo pipefail

detect_os() {
    case "$(uname -s)" in
        Linux*)     OS="linux";;
        Darwin*)    OS="macos";;
        *)          OS="unknown";;
    esac
    
    if [ "$OS" == "unknown" ]; then
        echo "Unsupported operating system"
        exit 1
    fi
    
    echo -e "OS detected: ${OS}\n"
}

confirm_deployment() {
    echo "This will deploy dotfiles to your home directory."
    echo "Make sure that this script is called from ZSH."
    echo "All required dependencies must be installed."
    echo "Existing files will be overwritten."
    read -p "Do you want to continue? (y/N): " -n 1 -r
    echo -e "\n"
    
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Deployment cancelled."
        exit 0
    fi
}

download_ohmyposh_config() {
    echo -e "Downloading Oh My Posh 'Atomic' config"
    
    oh-my-posh config export \
        --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/atomic.omp.json \
        --output "$HOME/.oh-my-posh.yaml"
    
    if [ $? -eq 0 ]; then
        echo -e "Oh My Posh configured successfully\n"
    else
        echo "Failed to configure Oh My Posh config"
        return 1
    fi
}

install_neovim_plugins() {
    echo "Installing Neovim plugins"
    
    if ! command -v nvim &> /dev/null; then
        echo "Neovim not found. Skipping plugin installation."
        return 1
    fi
    
    nvim --headless +PlugInstall +qa
    
    echo -e "Neovim plugins installed successfully\n"
}

install_vscode_extensions() {
    echo "Installing VS Code extensions"
    
    if ! command -v code &> /dev/null; then
        echo "VS Code CLI not found. Skipping extension installation."
        return 1
    fi
    
    local extensions=(
        "PKief.material-icon-theme"
        "eamodio.gitlens"
        "yzhang.markdown-all-in-one"
        "shd101wyy.markdown-preview-enhanced"
        "timonwong.shellcheck"
        "redhat.vscode-yaml"
        "redhat.ansible"
        "ms-python.python"
        "OpenTofu.vscode-opentofu"
        "ms-azuretools.vscode-docker"
        "ms-vscode-remote.remote-containers"
        "bbenoist.vagrant"
        "coolbear.systemd-unit-file"
    )
    
    for extension in "${extensions[@]}"; do
        echo "Installing: $extension"
        code --install-extension "$extension" --force
    done
    
    echo -e "VS Code extensions installed successfully\n"
}

deploy_dotfiles() {
    echo "Deploying dotfiles"
    
    cp .zshrc "$HOME/.zshrc"
    
    mkdir -p "$HOME/.oh-my-zsh"
    cp .oh-my-zsh/aliases.zsh "$HOME/.oh-my-zsh/aliases.zsh"
    
    if [ "$OS" == "linux" ]; then
        cp .profile "$HOME/.profile"
    fi
    
    mkdir -p "$HOME/.config"
    cp -r .config/nvim "$HOME/.config/nvim"
    
    if [ "$OS" == "linux" ]; then
        mkdir -p "$HOME/.config/Code/User"
        cp .config/Code/User/settings.json "$HOME/.config/Code/User/settings.json"
    elif [ "$OS" == "macos" ]; then
        if [ ! -d "$HOME/Library/Application Support/Code" ]; then
            echo "Error: VS Code directory not found in macOS."
            echo "Please install VS Code first."
            exit 1
        fi
        mkdir -p "$HOME/Library/Application Support/Code/User"
        cp .config/Code/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
    fi
}

main() {
    echo "========================================="
    echo "  Dotfiles deployment"
    echo "========================================="
    echo ""
    
    detect_os
    confirm_deployment
    deploy_dotfiles
    download_ohmyposh_config
    install_neovim_plugins
    install_vscode_extensions
    
    echo "Dotfiles installed successfully"
    echo "Restart your terminal or run 'exec zsh'"
}

main