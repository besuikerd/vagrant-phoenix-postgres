if [ ! -z $(screen -list | grep frontend) ]; then
  screen -dmS frontend bash -c 'cd /vagrant/frontend; gulp dev --proxy 4000'
fi
cd /vagrant/backend
mix phoenix.server
