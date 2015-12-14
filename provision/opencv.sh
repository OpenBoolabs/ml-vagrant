#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING OPENCV'
echo '----------------------------------------------'

mkdir /tmp/opencv
cd /tmp/opencv

wget https://s3.amazonaws.com/boo-packages/deb/opencv/opencv_2.4.10-006_amd64.deb
dpkg -i opencv_2.4.10-006_amd64.deb

apt-get install -f -y
