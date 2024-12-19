#! /bin/bash

if [ ! -d /Applications/Karabiner-Elements.app ]; then
  echo "Karabiner-Elements not found, please install"
  exit
fi

echo "copying config.."

karabinerDir=~/.config/karabiner/assets/complex_modifications/

if [ ! -d $karabinerDir ]; then
  mkdir -p $karabinerDir
fi

cp ./src/right_shift_vi_like.json $karabinerDir

if  [ "$1" == "--with-extras" ]; then
  echo "copying extras.."
  cp ./src/extras/* $karabinerDir
fi

echo "..all done, remember to the install mappings through Karabiner-Elements preferences"
