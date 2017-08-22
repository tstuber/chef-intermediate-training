#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


### Uncomment to set a breakpoint. 
#require 'pry'
#binding.pry

include_recipe 'httpd::install'
include_recipe 'httpd::configuration'
include_recipe 'httpd::service'
