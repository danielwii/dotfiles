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
brew install nvm
brew install jenv
brew install java8
brew install go
brew install gradle
brew install git
brew install git-flow
brew install pipenv

# apps
brew cask install vlc
brew cask install docker
brew cask install drawio
brew cask install kindle
brew cask install evernote
brew cask install telegram
brew cask install visual-studio-code
brew cask install graphql-playground
# brew cask install java
# brew cask install java8
# brew cask install java10

# brew install yarn
brew install yarn --without-node

# other utils
brew install jq # jq is a lightweight and flexible command-line JSON processor
brew install pv
brew install bat
brew install fkill
brew install thefuck # Magnificent app which corrects your previous console command

# net utils
brew install http
brew install httpie
brew install httpstat
brew install mtr
brew install openconnect
brew cask install ngrok
brew cask install v2rayx
brew cask install shadowsocksx-ng
brew cask install outline-manager

brew install imagemagick
brew install poppler
brew install gs
brew install exa

# k8s
brew install kubernetes-helm
brew install docker-machine-driver-hyperkit --ignore-dependencies docker-machine
brew cask install minikube

# infrastructure as code
brew install terraform
brew install pulumi

brew cleanup
