#!/bin/bash -i

# Install rvm
mkdir -p ~/.rvm/src && cd ~/.rvm/src && rm -rf ./rvm
git clone --depth 1 git://github.com/rvm/rvm.git
cd rvm && ./install

hash -r
