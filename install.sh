#!/bin/sh

dev="$HOME/developer"
mkdir -p $dev
cd $dev

git clone --recursive https://github.com/NeoCoast/mac-setup.git

scripts="$dev/mac-setup/scripts"
source $scripts/mac_config.sh
source $scripts/brew.sh
source $scripts/rvm.sh

rm -rf $dev