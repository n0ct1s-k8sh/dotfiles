# *OhMyZSH*

## Location

This file has to be located in `$HOME/.zshrc` with `0644` perms.

## Installation

As obvious, you need to install [*zsh*](https://www.zsh.org) and [*OhMyZsh*](https://ohmyz.sh). Then follow these sections in order:

### Custom Plugins

Install these custom plugins:

- [*F-Sy-H*](https://github.com/z-shell/F-Sy-H?tab=readme-ov-file#oh-my-zsh).
- [*zsh-autosuggestions*](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh).
- [*zsh-fzf-history-search*](https://github.com/joshskidmore/zsh-fzf-history-search?tab=readme-ov-file#oh-my-zsh).
  - Needs [*fzf*](https://github.com/junegunn/fzf).

### Theme [powerlevel10k](https://github.com/romkatv/powerlevel10k)

- [Install its patched nerd font *MesloLGS NF*](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).
  - **Set the `Meslo LGS NF Regular` font with size 10 as the default monospace font configuration.**
- [Install the plugin](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh).


Then, deploy the config file and run `p10k configure` to easily set up the prompt theme.
