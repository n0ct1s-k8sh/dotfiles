# dotfiles

These are my config files for my tools across Linux and macOS.

## Deployment

Use with caution the `deploy.sh` script to deploy everything.

## Environment variables (Linux)

Only required in Linux to set things like the [Kvantum QT theme engine](https://github.com/tsujan/Kvantum) in GTK+ desktops (like GNOME).

## ZSH 

It uses the [Oh My Zsh framework](https://ohmyz.sh) with the following plugins:

- [*F-Sy-H*](https://github.com/z-shell/F-Sy-H?tab=readme-ov-file#oh-my-zsh).
- [*zsh-autosuggestions*](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh).
- [*zsh-fzf-history-search*](https://github.com/joshskidmore/zsh-fzf-history-search?tab=readme-ov-file#oh-my-zsh).
  - It needs [*fzf*](https://github.com/junegunn/fzf) installed.

It also uses the [Oh My Posh prompt](https://ohmyposh.dev/) with their Meslo Nerd Font set.

## Neovim

It uses the [vim-plug plugin manager](https://github.com/junegunn/vim-plug) to install the following plugins:

- [vim-airline](https://github.com/vim-airline/vim-airline)
  - [Its themes](https://github.com/vim-airline/vim-airline-themes).
- [auto-pairs](https://github.com/jiangmiao/auto-pairs).
- [nerdtree](https://github.com/preservim/nerdtree).
- [nercommenter](https://github.com/preservim/nerdcommenter).
- [vim-smoothie](https://github.com/psliwka/vim-smoothie).

## VSCode

The config file path varies between Linux and macOS:

- GNU+Linux &rarr; `$HOME/.config/Code/User`
- macOS &rarr; `$HOME/Library/Application\ Support/Code/User`

Don't forget to install the following extensions:

- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme).
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens).
- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one).
- [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced).
- [ShellCheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck).
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml).
- [Ansible](https://marketplace.visualstudio.com/items?itemName=redhat.ansible).
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python).
- [OpenTofu](https://marketplace.visualstudio.com/items?itemName=OpenTofu.vscode-opentofu).
- [Container Tools](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-containers).
- [Devcontainers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).
- [Vagrant](https://marketplace.visualstudio.com/items?itemName=bbenoist.vagrant).
- [systemd-unit-file](https://marketplace.visualstudio.com/items?itemName=coolbear.systemd-unit-file).
