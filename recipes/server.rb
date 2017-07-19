#
# Cookbook Name:: Webserver Setup.
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "
  <html>
    <body>
      <h1>Yo, world!</h1>
      <p>You found me! Let me introduce myself. I am #{node['hostname']} @ #{node['ipaddress']}.  
    </body>
  </html>
"
end

service 'httpd' do
  action [:enable, :start]
end
