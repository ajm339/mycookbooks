#
# Cookbook Name:: newrelic_server_remove
# Recipe:: default
#
# Copyright 2014, Daapr
#
# All rights reserved - Do Not Redistribute
#

execute "Remove newrelic-sysmond" do
  command "apt-get remove newrelic-sysmond"
end