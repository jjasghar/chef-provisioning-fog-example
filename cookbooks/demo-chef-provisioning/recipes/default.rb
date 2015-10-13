#
# Cookbook Name:: demo-chef-provisioning
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

case node[:platform]
when 'redhat', 'centos'

when 'ubuntu', 'debian'
  execute 'apt-get update'

  package 'build-essential' do
    action :install
  end
end

package 'vim' do
  action :install
end
