#!/usr/bin/env bash -eo pipefail
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
mas signin colin@jchenry.me
brew bundle --file ~/.config/Brewfile