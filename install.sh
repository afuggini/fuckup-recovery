#!/bin/bash

echo "Downloading NodeJS..."
mkdir ~/Downloads/"Fuckup Recovery"
cd ~/Downloads/"Fuckup Recovery"
curl -O https://nodejs.org/dist/v6.11.3/node-v6.11.3.pkg

open node-v6.11.3.pkg
echo "Install NodeJS, then press ENTER to continue..."; read dummy;

echo "Installing Meteor..."
curl https://install.meteor.com/ | sh

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Updating Homebrew..."
brew update

echo "Installing AWS CLI..."
brew install awscli awsebcli

echo "Installing MongoDB..."
brew install mongodb
mkdir -p /data/db
chmod 777 /data/db

echo "Installing Redis..."
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

echo "Downloading required software..."
curl -O https://github.com/downloads/specialunderwear/Hosts.prefpane/Hosts-1.3.pkg
curl -O https://evernote.s3.amazonaws.com/skitch/mac/release/Skitch-2.8.zip
curl -O https://secure.screenhero.com/update/screenhero/Screenhero.dmg
curl -O https://mongohub.s3.amazonaws.com/MongoHub.zip
