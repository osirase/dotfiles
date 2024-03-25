# Dotfiles
My local dotfiles.

## Prerequisite Software

``` 
sudo dnf -y install stow util-linux-user zsh vim ripgrep tmux fzf fd-find shellcheck pandoc emacs && chsh -s $(which zsh)
```

## Installation

```
git clone https://github.com/osirase/dotfiles.git $HOME/.config/dotfiles && stow -t $HOME -d $HOME/.config/dotfiles .
```

## Doom Emacs

```
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install && export PATH="$HOME/.config/emacs/bin/:$PATH"
```

