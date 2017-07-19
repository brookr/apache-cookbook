#
# Cookbook Name:: Webserver Setup.
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package "httpd" do
  action :install
end

file "/var/www/html/index.html" do
  content "<html><body><h1>Yo, world!</h1></body></html>"
end

service "httpd" do
  action :enable
  action :start
end

