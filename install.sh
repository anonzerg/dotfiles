#! /usr/bin/env bash

<<<<<<< HEAD
apt-get update && apt-get upgrade -y
=======
apt-get update && apt-get upgrade
>>>>>>> 0854e93a38d99acb61ea8cbc35318188f23f410b

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
<<<<<<< HEAD
  gfortran \
  tmux -y
=======
  gfortran
>>>>>>> 0854e93a38d99acb61ea8cbc35318188f23f410b

if [[ $? -eq 0 ]]; then
  echo "required packages installed"
else
  echo "packages installation process exit with $?."
  echo "packages installation failed."
<<<<<<< HEAD
fi
=======
fi
>>>>>>> 0854e93a38d99acb61ea8cbc35318188f23f410b
