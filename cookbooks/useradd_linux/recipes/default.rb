#
# Cookbook:: useradd_linux
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

user 'Add Khaleel2 User' do
  manage_home true
  comment 'Creating User Khaleel2'
  home '/home/khaleel2'
  shell '/bin/bash'
  username "khaleel2"
  password '$1$3h3nSy7x$/Cqv6AnkmTdEPY7gbFKiJ/'
  action :create
end

sudo 'khaleel2' do
  user 'khaleel2'
end
