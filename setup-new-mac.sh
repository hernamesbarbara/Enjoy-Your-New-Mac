#!/usr/bin/env bash
# -*- coding: utf-8 -*-

echo "installing macOs apps...."

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /tmp/homebrew-install.log
fi

# make sure you have write permissions so brew can install things
sudo chown -R $(whoami) $(brew --prefix)/*

# ensure brew recipes are up to date
brew update

# ensure latest version of each package
brew upgrade --all

# install programming languages
brew install \
    python3
    ipython
    node
    r

# install your favorite dev tools/packages
brew install --verbose \
    iterm2 \
    coreutils \
    wget \
    jq \
    ack \
    cowsay \
    fortune \
    lolcat \
    lorem \
    poppler \
    postgresql \
    qt \
    readline \
    tree \
    youtube-dl \
    ffmpeg \
    imagemagick \
    pygments

# install your favorite macOs apps
brew install --cask \
    google-chrome \
    dropbox \
    google-drive \
    alfred \
    1password \
    visual-studio-code \
    spotify \
    tor-browser \
    discord \
    figma \
    iconjar \
    notion \
    gpg-suite \

brew cask alfred link

echo "cleaning up brew...."
brew cleanup
brew cask cleanup

echo "installing python packages..."
sudo pip3 install --upgrade pip
pip3 --verbose install \
    numpy \
    pandas \
    scipy \
    scikit-learn \
    tensorflow \
    ujson \
    requests \
    beautifulsoup4 \
    docopt

echo 'done...enjoy your new mac'
exit 0