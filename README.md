# hello_vagrant cookbook

Simple cookbook that supports using Berkshelf and Vagrant.  Good for verifying
your development environment is setup correctly or for validating new vagrant
boxes.

# Requirements

To run locally, install the latest vagrant version: http://downloads.vagrantup.com/.
Version 1.2.4 was the latest at the time of this tutorial.

# Usage

Basic usage:

    cd hello_vagrant
    bundle install
    berks install
    vagrant plugin install vagrant-berkshelf
    vagrant up

Ssh in to box:

    vagrant ssh

# Recipes

hello_vagrant::default - logs "Hello, World!" to chef log.

# Author

Author:: Peter Schroeter
