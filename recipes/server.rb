#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'apache2'
template '/var/www/html/index.html'do
  #content "<h1>Hello, world!</h1><b/>
  #        <p>Ipaddress: #{node['ipaddress']}</p><b/>
  #        <p>Hostname: #{node['hostname']}</p><b/>"
  #action :create
  source 'index.html.erb'
end
file '/etc/init/httpd.conf' do
end
service 'httpd' do
  action [ :enable, :start ]
end
  
