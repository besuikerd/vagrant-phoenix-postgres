#!/bin.bash

if [ -z `which elixir` ]; then
  echo "Installing Elixir..."

  apt-get -y update
  apt-get -y install elixir
  apt-get -y install esl-erlang
fi
