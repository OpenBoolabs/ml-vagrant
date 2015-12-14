# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--memory", 1024*3]
    vb.customize ["modifyvm", :id, "--cpus", 2]
  end

  #-----------------Box

  config.vm.box = "ubuntu/trusty64"

  #-----------------Provisions

  config.vm.provision :shell, :inline => "apt-get -y update && apt-get -y upgrade"

  config.vm.provision :shell, :inline => "apt-get install --reinstall -y language-pack-en language-pack-pt"
  config.vm.provision :shell, :inline => "apt-get install -y curl tmux vim sqlite3 fontconfig imagemagick libjpeg8 libjpeg8-dev libfreetype6-dev htop libxslt1.1 build-essential libtool checkinstall libxml2-dev python2.7-dev gfortran libopenblas-dev liblapack-dev python-pip python-matplotlib"

  config.vm.provision :shell, :inline => "chmod 755 /home/vagrant"

  # Git
  config.vm.provision :shell, :path => "provision/git.sh"

  # Ruby
  config.vm.provision :shell, :path => "provision/rvm.sh", :args => "head"
  config.vm.provision :shell, :path => "provision/ruby.sh", :args => "2.2.0 bundler"

  # Python
  config.vm.provision :shell, :path => "provision/python.sh"

  # Prepare first time
  config.vm.provision :shell, :path => "provision/prepare_first_time.sh"

  # OpenCV
  config.vm.provision :shell, :path => "provision/opencv.sh"

  #-----------------Network

  # App server
  config.vm.network :forwarded_port, guest: 5000, host: 5000
  config.vm.network :forwarded_port, guest: 8000, host: 8000

  # Ipython
  config.vm.network :forwarded_port, guest: 8888, host: 8888
end







