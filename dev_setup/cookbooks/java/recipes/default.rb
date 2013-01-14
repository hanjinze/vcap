#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2011, VMware
#
#

case node['platform']
when "ubuntu"
  package "python-software-properties"
  package 'default-jdk'
# FIXME: add other major distro support
when "centos"
  
else
  Chef::Log.error("Installation of Sun Java packages not supported on this platform.")
end
