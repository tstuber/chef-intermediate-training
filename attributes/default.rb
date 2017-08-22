# Global attributes.
default['httpd']['index_location'] = '/var/www/html/index.html'

# Platform-dependent attributes. 
case node['platform']
when 'ubuntu'
  default['httpd']['package_name'] = 'apache2'
  default['httpd']['service_name'] = 'apache2'
else
  default['httpd']['package_name'] = 'httpd'
  default['httpd']['service_name'] = 'httpd'
end
