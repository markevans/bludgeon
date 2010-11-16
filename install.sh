#!/bin/bash
if [ $(basename `pwd`) != "bludgeon" ]
then
  echo Please run from inside the bludgeon directory
  exit
fi

bludgeon_dir=`pwd`
home_dir=$HOME

for file in .ackrc .bash_profile .gemrc .gitconfig; do
  echo "Linking $file"
  ln -s $bludgeon_dir/$file $home_dir
done

echo "Copying bin"
cp -r bin $home_dir
echo "Copying git-completion.sh"
cp git-completion.sh $home_dir

