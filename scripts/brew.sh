#!/bin/sh

# Check for homebrew
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
brew update

# Taps
function tap() {
  taps=("$@")
  for tap in "${taps[@]}"; do
    brew tap $tap
  done
}

taps=(
  "homebrew/cask-fonts"
  "heroku/brew"
  "cjbassi/ytop"
)
tap "${taps[@]}"

print "Finished tapping"

# Binaries
function brewi() {
  brews=("$@")
  for brew in "${brews[@]}"; do
    brew install $brew
  done
}

brews=(
  "ag"
  "bat"
  "curl"
  "git"
  "heroku"
  "mas"
  "nvm"
  "postgresql"
  "tree"
  "vim"
  "yarn"
  "ytop"
)
brewi "${brews[@]}"

# Casks
function cask() {
  casks=("$@")
  for cask in "${casks[@]}"; do
    brew install $cask --cask --appdir="/Applications"
  done
}

casks=(
  # Apps
  "google-chrome"
  "iterm2"
  "postman"
  "slack"
  "spotify"
  "visual-studio-code"
)
cask "${casks[@]}"

# Purchase apple store apps
function masp() {
  mass=("$@")
  for mas in "${mass[@]}"; do
    mas purchase $mas
  done
}

mass=(
  "497799835" # XCode
)
masp "${mass[@]}"
