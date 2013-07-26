#
# Cookbook Name:: hello_vagrant
# Recipe:: default
#
# Copyright (C) 2012 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

log "Hello, World!"
log "Hello, #{node[:hello_vagrant][:name]}!"

