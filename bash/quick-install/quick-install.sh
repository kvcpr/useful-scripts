#!/usr/bin/env bash

# Install bash
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install npm
brew install npm

# Install python
brew install python

# Install wget
brew install wget

# Install node version manager
npm install -g n

# Install latest version of node
sudo n latest

# Install gulp
npm install -g gulp

# Install angular-cli
npm install -g @angular/cli

# Install google cloud cli
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-141.0.0-darwin-x86_64.tar.gz
tar zxvf google-cloud-sdk-141.0.0-darwin-x86_64.tar.gz
rm google-cloud-sdk-141.0.0-darwin-x86_64.tar.gz
chmod +x google-cloud-sdk/install.sh
bash google-cloud-sdk/install.sh
rm -R google-cloud-sdk
