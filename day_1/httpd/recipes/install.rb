#
# Cookbook:: httpd
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved

#require 'pry'
#binding.pry

apt_update

package node['httpd']['package_name']
