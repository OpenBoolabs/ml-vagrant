#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING PYTHON VIRTUALENVWRAPPER'
echo '----------------------------------------------'

apt-get install -y python-pip python-dev ipython

sudo apt-get install -y libffi-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y libxml2-dev libxslt1-dev python-dev

pip install virtualenvwrapper

cat <<EOL >>/home/vagrant/.bashrc

export WORKON_HOME=/home/vagrant/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

EOL
