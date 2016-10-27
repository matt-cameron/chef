#
# Cookbook Name:: frontend
# Recipe:: default
#
# Copyright 2016, MATT CAMERON
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"

package 'apache2' do
  action :install
end

package 'git' do
  action :install
end

execute "clear www dir" do
  command "sudo rm /var/www/html/*"
end

git "/var/www/html" do
  repository "git://github.com/mattsymc/simplehtml.git"
  reference "master"
  action :pull
end
