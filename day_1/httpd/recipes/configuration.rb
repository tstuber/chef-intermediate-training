#
# Cookbook:: httpd
# Recipe:: configuration
#
# Copyright:: 2017, The Authors, All Rights Reserved.
file node['httpd']['index_location'] do
  content '<h1>Welcome Home!</h1>'
end
