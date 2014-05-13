# Yeah, a mean dev-machine


It builds an Ubuntu 12.04 box and imports my [DotFiles](https://github.com/lukaszkorecki/DotFiles)


## How to?

- [Install Vagrant](https://vagrantup.com)
- Install [Berkshelf](http://berkshelf.com/) plugin for Vagrant with:

```
vagrant plugin install vagrant-berkshelf --plugin-version 2.0.1
```
- `vagrant up`


## What does it do? And how?

By using `chef-solo` and `vagrant` it builds a linux box, installs some awesome tools like

- weechat
- vim
- [Go](http://go-lang.org)
- tmux
- gcc
- python & pip

and makes `ruby-1.9.3` the default ruby.

# Licence

MIT
