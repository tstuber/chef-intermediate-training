#
# Cookbook:: httpd
# Recipe:: service
#
# Copyright:: 2017, The Authors, All Rights Reserved.
service node['httpd']['service_name']  do
  action [:enable, :start]
end
