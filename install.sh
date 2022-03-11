#!/bin/bash

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Updating Homebrew..."
brew update

echo "Installing NodeJS..."
brew install node nvm

echo "Installing Applications..."
brew install google-chrome firefox --cask

echo "Installing Work stack..."
brew install iterm2 slack sourcetree docker visual-studio-code --cask

echo "Installing VSCode extensions..."
code --install-extension EditorConfig.EditorConfig PeterJausovec.vscode-docker QassimFarid.ejs-language-support RoscoP.ActiveFileInStatusBar WakaTime.vscode-wakatime azemoh.one-monokai chenxsan.vscode-standardjs christian-kohler.npm-intellisense christian-kohler.path-intellisense dbaeumer.vscode-eslint donjayamanne.jquerysnippets dzannotti.vscode-babel-coloring eamodio.gitlens esbenp.prettier-vscode file-icons.file-icons hdg.live-html-previewer hollowtree.vue-snippets jasonlhy.vscode-browser-sync jeremyrajan.vscode-lebab jeremyrajan.webpack lihui.vs-color-picker ms-vscode.atom-keybindings msjsdiag.debugger-for-chrome octref.vetur pstreule.codebucket sdras.vue-vscode-snippets techer.open-in-browser xabikos.JavaScriptSnippets ziyasal.vscode-open-in-github

echo "Installing Communication Apps..."
brew install zoomus skype --cask

echo "Installing AWS CLI..."
# brew install awscli awsebcli

echo "Installing Node modules..."
# npm install -g nodemon gulp gulp-cli

echo "Installing ZSH..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

echo "Installing Adobe Software..."
# brew install adobe-acrobat-pro adobe-illustrator-cc adobe-photoshop-cc --cask

echo "Installing additional apps..."
brew install appdelete sketch skitch vlc franz --cask

echo "Downloading required software..."
# curl -O https://github.com/downloads/specialunderwear/Hosts.prefpane/Hosts-1.3.pkg
