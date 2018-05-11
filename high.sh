apt-get update
apt-get install -y git salt-minion
salt-call --local state.highstate --file-root srv/salt/
