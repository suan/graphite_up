Vagrant VM for Graphite + StatsD + Diamond
=======================
A quick Vagrant setup for a running Graphite, StatsD, and Diamond installation on a Debian Squeeze 32-bit VM via Chef.

Various Chef cookbooks here might also be useful on their own, though they are not very polished.

Installation
------------------------------------------
- virtual box needs to be installed: https://www.virtualbox.org/wiki/Downloads
- Vagrant too: `[sudo] gem install vagrant`
- Download or clone this project

Usage
--------------------------------------------------------
- `cd` to the project's root
- In the `Vagrantfile`, set `:tz` to your timezone.
- To spin up the VM, do `vagrant up`
- After the VM is up, `vagrant ssh` to ssh into it.
- From the local machine, view the Graphite web interface by browsing to `http://localhost:8080`.
- You can later shut it down by doing `vagrant halt`, or completely destroy it using `vagrant destroy`.

Credits
------------------
- OpsCode for their various cookbooks
- [Graphite](http://graphite.wikidot.com/) itself
- the Linux Racker blog: http://linuxracker.com/2012/03/31/setting-up-graphite-server-on-debian-squeeze/
