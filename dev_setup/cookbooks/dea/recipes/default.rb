#
# Cookbook Name:: dea
# Recipe:: default
#
# Copyright 2011, VMWARE
#
#

case node['platform']
when "ubuntu"
  %w{lsof psmisc librmagick-ruby}.each do |pkg|
    package pkg
  end
when "centos"
  %w{lsof psmisc}.each do |pkg|
    package pkg
  end
end

template node[:dea][:config_file] do
  path File.join(node[:deployment][:config_path], node[:dea][:config_file])
  source "dea.yml.erb"
  owner node[:deployment][:user]
  mode 0644
end

cf_bundle_install(File.join(node[:cloudfoundry][:path], "dea"))
