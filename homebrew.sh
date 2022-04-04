#!/usr/bin/env bash

echo 'installing homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'saving brew installed location'
BREW_PREFIX=$(brew --prefix)

echo 'installing git'
brew install git

echo 'installing git-lfs'
brew install git-lfs

echo "What name do you want to use in GIT user.name?"
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear

echo "What email do you want to use in GIT user.email?"
read git_config_user_email
git config --global user.email $git_config_user_email
clear

echo "What default editor do you want to use in GIT core.editor?"
read git_core_editor_to_code
git config --global core.editor $git_core_editor_to_code
clear

echo 'installing git remote codecommit'
pip install git-remote-codecommit

echo 'installing font tools'
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

echo 'installing chrome'
brew install --cask google-chrome

echo 'installing discord'
brew install --cask discord

echo 'installing spotify'
brew install --cask spotify

echo 'installing whatsapp desktop'
brew install --cask whatsapp

echo 'installing slack'
brew install --cask slack

echo 'installing the unarchiver'
brew install --cask the-unarchiver

echo 'installing docker'
brew install --cask docker
open -a Docker

echo 'installing mysqlworkbench'
brew install --cask mysqlworkbench

echo 'installing dbeaver'
brew install --cask dbeaver

echo 'installing aws-cli'
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

echo 'installing mongodb compass'
brew install --cask mongodb-compass

echo 'installing microsoft word'
brew install --cask microsoft-word

echo 'installing microsoft excel'
brew install --cask microsoft-excel

echo 'installing microsoft powerpoint'
brew install --cask microsoft-powerpoint

echo 'installing insomnia'
brew install --cask insomnia

echo 'installing postman'
brew install --cask postman

echo 'installing obs'
brew install --cask obs

echo 'installing notion'
brew install --cask notion

echo 'installing visual studio code'
brew install --cask visual-studio-code

echo 'installing VSCode extensions'
sh ./vscode-extensions.sh

echo 'installing fira code'
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

echo 'installing zsh'
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'installing oh my zsh'
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
code ~/.zshrc
echo 'Set ZSH_THEME="spaceship"'

echo 'installing dracula theme terminal'
git clone https://github.com/dracula/terminal-app.git

echo 'installing zplugin'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
echo 'add the following lines to .zshrc /
      zplugin light zsh-users/zsh-autosuggestions /
      zplugin light zsh-users/zsh-completions /
      zplugin light zdharma/fast-syntax-highlighting'

echo 'installing android studio'
brew install --cask android-studio

echo 'installing nvm'
brew install nvm

export NVM_DIR="$HOME/.nvm" && (
      git clone https://github.com/creationix/nvm.git "$NVM_DIR"
      cd "$NVM_DIR"
      git checkout $(git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1))
) && \. "$NVM_DIR/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 16.13.2
nvm --version
nvm alias default 16.13.2
node --version
npm --version

echo 'installing yarn'
brew install yarn

echo 'installing global npm packages'
sh npm-dependencies.sh

echo 'installing watchman'
brew install watchman

echo 'installing cocoapods'
brew cleanup -d -v
brew install cocoapods

echo 'installing jdk11'
brew install --cask adoptopenjdk/openjdk/adoptopenjdk11
cd ~/Library/Android/sdk/tools/bin/
sdkmanager --licenses
open -a Android\ Studio
echo 'export ANDROID_HOME=$HOME/Library/Android/sdk /
      export PATH=$PATH:$ANDROID_HOME/emulator /
      export PATH=$PATH:$ANDROID_HOME/tools /
      export PATH=$PATH:$ANDROID_HOME/tools/bin /
      export PATH=$PATH:$ANDROID_HOME/platform-tools'

echo 'installing openssh'
brew install openssh
