# Dot Files

## Initial Setup
1. Create sym link for `.vimrc` in `~/`.
1. Create sym link for `.gitconfig` in `~`.

## Zsh Setup
1. Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh).
1. Install [p10k theme](https://github.com/romkatv/powerlevel10k).
1. Load personal .zsh files on shell start. (oh-my-zsh autoloads any .zsh file in oh-my-zsh/custom): `ln -s $HOME/src/dotfiles/zsh_settings/*.zsh $HOME/.oh-my-zsh/custom/`.

## Bash Setup
1. Create sym link for `bash_settings/.profile` in `~/`.
1. Copy `my-paths` to `/etc/paths.d` (note: cannot symlink to this file).
