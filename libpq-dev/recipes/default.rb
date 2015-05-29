#
# Cookbook Name:: libpq-dev
# Recipe:: default
#
# Copyright (C) 2014 Mohamad El-Husseini
#
# Apache 2.0
#

case node['platform_family']
  when 'debian'
    bash 'update apt-get' do
      user 'root'
      code <<-EOC
        apt-get update
      EOC
    end
end #case


package 'libpq-dev' do
  package_name value_for_platform_family(
      'debian'   => 'libpq-dev',
      'rhel'     => 'postgresql8-devel',   # generic: postgresql-devel  (works with warning)
      'mac_os_x' => 'postgresql',
  )
end #package


