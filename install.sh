#! /bin/bash

set -e

not_which() {
  ! which "$1" >/dev/null
}

cask_install() {
  brew cask install "$1"
}

if not_which brew; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if not_which zsh; then
  brew install zsh
fi

zsh_path="$(which zsh)"
if [ "$(dscl . -read /Users/$(whoami) UserShell)" != "UserShell: $zsh_path" ]; then
  if ! grep -q "$zsh_path" /etc/shells; then
    # Allow (Homebrew's) Zsh to be set as the default shell
    echo "$zsh_path" | sudo tee -a /etc/shells
  fi

  chsh -s "$zsh_path"
fi

if [ ! -d /Applications/Karabiner-Elements.app ]; then
  cask_install karabiner-elements
fi

configDir=~/.config/karabiner/assets/complex_modifications/

if [ ! -d $configDir ]; then
  mkdir -p $configDir
fi

cp ./src/right_shift_vi_like.json $configDir

if  [ "$1" == "--with-extras" ]; then
  cp ./src/right_shift_vi_like_extras $configDir
fi

echo "All done, remember to install the configurations in karabiner-elements preferences"
