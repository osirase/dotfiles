# Dotfiles
My local dotfiles.

## Installation

```
git clone https://github.com/osirase/dotfiles.git $HOME/.config/dotfiles && stow -t $HOME -d $HOME/.config/dotfiles .
```

## Base Software

``` 
sudo dnf -y install stow zsh ripgrep tmux fzf fd-find shellcheck pandoc emacs && chsh -s $(which zsh)
```

## Doom Emacs

```
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
```

