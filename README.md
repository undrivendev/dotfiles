# dotfiles
undrivendev's dotfiles.
The configuration impacts mainly `zsh` appearence and `tmux` behaviour.

## Prerequisites
1. Install [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh), best done with the package manager of your distro. Alternatively: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`.
2. Install [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh) zsh theme for ohmyzsh: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
3. Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
4. Install [tpm](https://github.com/tmux-plugins/tpm): `git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
5. Install a [nerd font](https://github.com/ryanoasis/nerd-fonts). That's needed because the theme makes extensive use of glyphs not included in standard fonts.
6. Install and source tmux plugins while inside tmux with `prefix + I` shortcut (it will reload).
