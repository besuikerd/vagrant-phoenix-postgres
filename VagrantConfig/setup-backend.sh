#!/bin/bash

echo "Setting up backend ..."

cd /vagrant/backend
mix deps.get

#setup postgres user for ecto
cat << END | sudo su postgres -c psql
CREATE USER ecto WITH PASSWORD 'ecto';
ALTER ROLE ecto WITH LOGIN CREATEDB;
END

mix ecto.create
mix ecto.migrate
