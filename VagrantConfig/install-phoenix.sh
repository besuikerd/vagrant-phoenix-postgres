#!/bin/bash

if [ -z "$(mix archive | grep phoenix)" ]; then
  echo "Installing Phoenix..."

  sudo apt-get install -y inotify-tools

  yes | mix local.hex
  yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
  yes | mix local.rebar

  sudo npm install -g brunch
fi
