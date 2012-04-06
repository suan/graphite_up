Vagrant VM for Graphite
=======================
A quick Vagrant setup for a running Graphite installation on a Debian Squeeze 32-bit VM.

Installation
------------------------------------------
- virtual box needs to be installed: https://www.virtualbox.org/wiki/Downloads
- Vagrant too: `[sudo] gem install vagrant`
- Download or clone this project

Usage
--------------------------------------------------------
- To spin up the VM, `cd` to the project's root, and do `vagrant up`
- After the VM is up, `vagrant ssh` to ssh into it.
- You can later shut it down by doing `vagrant halt`, or completely destroy it using `vagrant destroy`.

Credits
------------------
- [OpsCode Python/pip/virtualenv Cookbook](http://community.opscode.com/cookbooks/python)
- [Graphite](http://graphite.wikidot.com/) itself
- the Linux Racker blog: http://linuxracker.com/2012/03/31/setting-up-graphite-server-on-debian-squeeze/
