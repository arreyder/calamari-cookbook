#
# Cookbook Name:: calamari
# Recipe:: default
#
# Copyright 2014, GoDaddy 
#
# All rights reserved - Do Not Redistribute
#
#
include_recipe 'salt::master'
include_recipe 'apache2::mod_wsgi'
include_recipe 'ceph::install'
include_recipe 'calamari::default'

%w(libcairo2 supervisor python-cairo libpq5 postgresq salt-minion python-sqlalchemy python-greenlet python-twisted python-txamqp python-gevent dctrl-tools debconf-utils python-support).each do |pkg|
  package pkg do
    action :install
  end
end  

apt_package "calamri-server" do
  action :install
#  source '/root/calamari-server_1.2.1-64-g32d231e_amd64.deb'
end

apt_package "calamri-clients" do
  action :install
#  source '/root/calamari-clients_1.2.1.1-29-g3790c24_all.deb'
end

apt_package "diamond" do
  action :install
#  source '/root/diamond_3.4.67_all.deb'
end

