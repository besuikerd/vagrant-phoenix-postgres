#!/bin/bash

if [ -z `which erl` ]; then
  echo "Installing Erlang..."

  FILENAME=/tmp/`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1`.deb
  wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb --output-document=$FILENAME && sudo dpkg -i $FILENAME
  apt-get update
  rm FILENAME
fi
