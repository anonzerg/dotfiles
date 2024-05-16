#! /usr/bin/env bash

if [[ -f $HOME/.dotfiles/.alacritty.yml ]]; then
  ln -s $HOME/.dotfiles/.alacritty.yml
else
  echo "no config file for alacritty."
fi

if [[ -f $HOME/.dotfiles/.zshrc && \
  -f $HOME/.dotfiles/.zsh_aliases ]]; then
  ln -s $HOME/.dotfiles/.zshrc
  ln -s $HOME/.dotfiles/.zsh_aliases
else
  echo "no config file for zsh."
fi

if [[ -f $HOME/.dotfiles/.vimrc ]]; then
  ln -s $HOME/.dotfiles/.vimrc
else
  echo "no config file for vim."
fi

if [[ -f $HOME/.dotfiles/.bashrc && \
  -f $HOME/.dotfiles/.bash_aliases ]]; then
  rm -rf $HOME/.bashrc
  if [[ $? -eq 0 ]]; then
    ln -s $HOME/.dotfiles/.bashrc
  else
    echo "failed to remove original bashrc."
  fi
  ln -s $HOME/.dotfiles/.bash_aliases
else
  echo "no config file for bash."
fi

if [[ -d $HOME/.dotfiles/nvim ]]; then
  ln -s $HOME/.dotfiles/nvim $HOME/.config
else
  echo "no config file for neovim."
fi

if [[ -d $HOME/.dotfiles/kak ]]; then
  ln -s $HOME/.dotfiles/kak $HOME/.config
else
  echo "no config file for kakoune."
fi

if [[ -f $HOME/.dotfiles/.inputrc ]]; then
  ln -s $HOME/.dotfiles/.inputrc
else
  echo "no config file for input config."
fi

if [[ -f $HOME/.dotfiles/.gitconfig && \
  -f $HOME/.dotfiles/.git-completion.bash && \
  -f $HOME/.dotfiles/.git-completion.zsh && \
  -f $HOME/.dotfiles/.git-prompt ]]; then
  mkdir .zsh
  if [[ $? -eq 0 ]]; then
    ln -s $HOME/.dotfiles/.git-completion.zsh $HOME/.zsh/_git
  else
    echo "failed to create .zsh directory."
  fi
  ln -s $HOME/.dotfiles/.gitconfig
  ln -s $HOME/.dotfiles/.git-completion.bash
  ln -s $HOME/.dotfiles/.git-prompt.sh
else
  echo "no config files for git."
fi