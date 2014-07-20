#
# Cookbook Name:: newrelic_server_config
# Recipe:: default
#
# Copyright 2014, Daapr
#
# All rights reserved - Do Not Redistribute
#

execute "Configure the New Relic apt repository." do
  command "echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list"
end

execute "Trust the New Relic GPG key." do
  command "wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -"
end

execute "Update the local package list." do
  command "apt-get update"
end

execute "Run the install command:" do
  command "apt-get install newrelic-sysmond"
end

execute "Add license key to config file: (See /etc/newrelic/nrsysmond.cfg for other config options)" do
  command "nrsysmond-config --set license_key=28ade0631cd3cfaead8bdc39f16fa602f814e61c"
end

execute "Start the daemon:" do
  command "/etc/init.d/newrelic-sysmond start"
end