#
# Cookbook Name:: python
# Recipe:: default
#
# Copyright 2012, VMware
#
#

case node['platform']
when "ubuntu"
  %w[ python-dev python-setuptools ].each do |pkg|
    package pkg
  end
  
  bash "Installing pip" do
    code "sudo easy_install pip"
  end  
  
when "centos"
  %w{python-devel psmisc}.each do |pkg|
    package pkg
  end
  
  bash "Installing pip" do
    code "curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python"
  end  
end
