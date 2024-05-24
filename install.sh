#! /usr/bin/env bash

apt-get update && apt-get upgrade -y

if [[ $? -eq 0 ]]; then
  echo "update and upgrade succeeded"
else
  echo "update and upgrade process exit with $?."
  echo "update and upgrade failed."
fi

apt-get install \
  vim \
  neovim \
  vlc \
  clang \
  thunderbird \
  zsh \
  alacritty \
  libgsl-dev \
  ruby \
  manpages-posix \
  manpages-posix-dev \
  moreutils \
  gdb \
  gfortran \
  tmux -y

if [[ $? -eq 0 ]]; then
  echo "required packages installed"
else
  echo "packages installation process exit with $?."
  echo "packages installation failed."
fi

echo "installing jetbrains font"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

if [[ $? -eq 0 ]]; then
  echo "jetbrains font installed successfully."
else
  echo "failed to install jetbrain font"
fi
