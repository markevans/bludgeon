#!/bin/bash
if [ $(basename `pwd`) != "bludgeon" ]
then
  echo Please run from inside the bludgeon directory
  exit
fi

bludgeon_dir=`pwd`
home_dir=$HOME

for file in .ackrc .bash_profile .gemrc .gitconfig bin git-completion.sh; do
  echo "Linking $file"
  ln -s $bludgeon_dir/$file $home_dir
done

touch $home_dir/.shortcuts.sh
