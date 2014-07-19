#
# Cookbook Name:: sidekiq_start
# Recipe:: default
#
# Copyright 2014, Daapr
#
# All rights reserved - Do Not Redistribute
#

execute "Start Sidekiq" do
  command "bundle exec rake sidekiq:start"
end