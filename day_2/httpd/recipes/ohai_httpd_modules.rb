#
# Cookbook:: httpd
# Recipe:: ohai_httpd_modules
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'httpd::default'
ohai_plugin 'httpd_modules'
