#!/bin/bash -i

# Install rbenv
rm -rf ./rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv/bin/rbenv && init

hash -r
