#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'apache2'
file '/var/www/html/index.html'do
  content '<h1>Hello, world!</h1>'
  action :create
end
file '/etc/init/httpd.conf' do
end
service 'httpd' do
  action [ :enable, :start ]
end
  
