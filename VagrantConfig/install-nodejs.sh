#!/bin/bash

if [ -z `which nodejs` ]; then
  echo "Installing NodeJS..."

  curl -sL https://deb.nodesource.com/setup_6.x | bash
  apt-get install -y nodejs

  npm install -g gulp
fi
