name             "hello_vagrant"
maintainer       "RightScale"
maintainer_email "support@rightscale.com"
license          "All rights reserved"
description      "Installs/configures hello_world cookbook"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "hello_vagrant::default", "Prints out hello world"

attribute "hello_vagrant/name",
  :display_name => "Name",
  :description => "Prints out this name",
  :required => false
