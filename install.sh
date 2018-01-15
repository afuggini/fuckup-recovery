#!/bin/bash

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Updating Homebrew..."
brew update

echo "Installing NodeJS..."
brew install node nvm

echo "Installing Applications..."
brew cask install google-chrome firefox

echo "Installing Work stack..."
brew cask install iterm2 hubstaff slack sourcetree robo-3t docker visual-studio-code

echo "Installing VSCode extensions..."
code --install-extension EditorConfig.EditorConfig PeterJausovec.vscode-docker QassimFarid.ejs-language-support RoscoP.ActiveFileInStatusBar WakaTime.vscode-wakatime azemoh.one-monokai chenxsan.vscode-standardjs christian-kohler.npm-intellisense christian-kohler.path-intellisense dbaeumer.vscode-eslint donjayamanne.jquerysnippets dzannotti.vscode-babel-coloring eamodio.gitlens esbenp.prettier-vscode file-icons.file-icons hdg.live-html-previewer hollowtree.vue-snippets jasonlhy.vscode-browser-sync jeremyrajan.vscode-lebab jeremyrajan.webpack lihui.vs-color-picker ms-vscode.atom-keybindings msjsdiag.debugger-for-chrome octref.vetur pstreule.codebucket sdras.vue-vscode-snippets techer.open-in-browser xabikos.JavaScriptSnippets ziyasal.vscode-open-in-github

echo "Installing Communication Apps..."
brew cask install zoomus skype

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
npm install -g nodemon gulp gulp-cli grunt mup bower

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
curl -O https://mongohub.s3.amazonaws.com/MongoHub.zip
