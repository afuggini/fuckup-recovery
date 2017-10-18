#!/bin/bash

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Updating Homebrew..."
brew update

echo "Installing NodeJS..."
brew install node

echo "Installing Applications..."
brew cask install google-chrome firefox

echo "Installing Work stack..."
brew cask install iterm2 atom hubstaff slack sourcetree robo-3t docker

echo "Installing Communication Apps..."
brew cask install screenhero zoomus skype

echo "Installing Atom packages..."
apm install atom-beautify color-picker emmet es6-javascript file-icons jshint language-babel linter linter-eslint merge-conflicts minimap monokai prettier-atom seti-icons wakatime

echo "Installing AWS CLI..."
brew install awscli awsebcli

echo "Installing MongoDB..."
brew install mongodb
mkdir -p /data/db
chmod 777 /data/db

echo "Installing Redis..."
brew install redis
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

echo "Installing Meteor..."
curl https://install.meteor.com/ | sh

echo "Installing Node modules..."
npm install -g nodemon gulp grunt mup iron-meteor

echo "Installing ZSH..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

echo "Installing Adobe Software..."
brew cask install adobe-acrobat-pro adobe-illustrator-cc adobe-photoshop-cc

echo "Installing additional apps..."
brew cask install dropbox appdelete sketch skitch vlc franz

echo "Downloading required software..."
curl -O https://github.com/downloads/specialunderwear/Hosts.prefpane/Hosts-1.3.pkg
curl -O https://evernote.s3.amazonaws.com/skitch/mac/release/Skitch-2.8.zip
curl -O https://secure.screenhero.com/update/screenhero/Screenhero.dmg
curl -O https://mongohub.s3.amazonaws.com/MongoHub.zip
