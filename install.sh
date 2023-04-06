#! /bin/bash

if [ ! -d /Applications/Karabiner-Elements.app ]; then
  echo "Karabiner-Elements not found, please install"
  exit
fi

echo "Copying config.."

configDir=~/.config/karabiner/assets/complex_modifications/

if [ ! -d $configDir ]; then
  mkdir -p $configDir
fi

cp ./src/right_shift_vi_like.json $configDir

if  [ "$1" == "--with-extras" ]; then
  echo "copying extras.."
  cp ./src/extras/* $configDir
fi

echo "..all done, remember to the install mappings through Karabiner-Elements preferences"
