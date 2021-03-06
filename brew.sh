#!/usr/bin/env bash

brew update
brew upgrade

brew install tldr
brew install coreutils
# brew install --HEAD libimobiledevice
# brew install --HEAD usbmuxd
# brew install --HEAD libimobiledevice
brew install ideviceinstaller
brew install ios-deploy
brew install cocoapods

# nodejs
brew install nvm
brew install yarn --without-node

# java
brew install jenv
brew install java8

# golang
brew install go
brew install gradle

# git
brew install git
brew install git-flow

# python
brew install pipenv

# https://github.com/CISOfy/lynis
# Security auditing tool
brew install lynis

# https://github.com/wagoodman/dive
# A tool for exploring each layer in a docker image
brew tap wagoodman/dive
brew install dive

# apps
brew cask install insomnia
brew cask install iina
brew cask install vlc
brew cask install docker
brew cask install drawio
brew cask install kindle
brew cask install evernote
brew cask install ngrok
brew cask install telegram
brew cask install visual-studio-code
brew cask install graphql-playground
# brew cask install java
# brew cask install java8
# brew cask install java10

# fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

# other utils
brew install jq # jq is a lightweight and flexible command-line JSON processor
brew install pv
brew install bat
brew install fkill
brew install thefuck # Magnificent app which corrects your previous console command
brew install hexyl

# net utils
brew install aria2
brew install http
brew install httpie
brew install httpstat
brew install mtr
brew install openconnect
brew cask install ngrok
brew cask install v2rayx
brew cask install shadowsocksx-ng
brew cask install outline-manager

# ving
# https://github.com/yittg/ving
brew tap yittg/iyg
brew install ving

# https://github.com/jpr5/ngrep
brew install ngrep

brew install graphviz
brew install imagemagick
brew install poppler
brew install gs
brew install exa

# https://github.com/GoogleCloudPlatform/gcsfuse/blob/master/docs/installing.md
brew cask install osxfuse
brew install gcsfuse
sudo ln -s /usr/local/sbin/mount_gcsfuse /sbin  # For mount(8) support

# https://github.com/cantino/mcfly
# brew tap cantino/mcfly https://github.com/cantino/mcfly
# brew install mcfly

# k8s
brew install kubectx
brew install kube-ps1
brew install kubernetes-helm
# brew install docker-machine-driver-hyperkit --ignore-dependencies docker-machine
# brew cask install minikube

# infrastructure as code
brew install terraform
brew install pulumi

brew cleanup
