#
# Cookbook:: httpd
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved
#
#require 'pry'
#binding.pry

# Platform-dependent attributes. 
case node['platform']
when 'ubuntu'
  apt_update
else
end

package node['httpd']['package_name']