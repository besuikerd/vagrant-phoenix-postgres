#!/bin/bash

CONFIG_PATH=/vagrant/VagrantConfig

echo "Bootstrapping ..."

sh $CONFIG_PATH/install-postgres.sh
sh $CONFIG_PATH/install-nodejs.sh
sh $CONFIG_PATH/install-erlang.sh
sh $CONFIG_PATH/install-elixir.sh
sh $CONFIG_PATH/install-elm.sh


echo "Setting locale ..."

locale-gen en_US en_US.UTF-8
dpkg-reconfigure locales

cat << END >> /home/vagrant/.bashrc
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
END
