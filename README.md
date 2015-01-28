# Why This?
 - Tell your working environment to go re-build itself automatically in case of system-wide crash
 - Ensure software version dependencies match one-another on local, dev, stage, and production environments
 - Don't like redundantly typing commands over and over again
 - Convenient port forwarding
 
# But Why?
 - It may improve your workflow depending on the use-case
 - Hopefully it helps someone
 
## What it does:
### Installs stable Ubuntu-14.04 (trusty)
### Installs: node, redis, mongo, git, and curl

## To begin:
### Install VirtualBox here: https://www.virtualbox.org/
### Install Vagrant here: https://www.vagrantup.com/
### Install Git and/or use package manager (e.g. HomeBrew: http://brew.sh/)

## Optional (KeyChain manager):
 - Inside .ssh directory, create a folder called “misc-code-keys" and place any keys you want to sync.
 - Then inside ‘shell/provision-keys.sh’ file, edit the lines so they match the names of the keys you currently have inside "misc-code-keys"
 

1. Go to your development directory, and clone this repo
2. Type in: vagrant up
3. Type in: vagrant ssh
 - When finished type in: vagrant suspend
 - To log-back-in type in: vagrant up, then vagrant ssh

### Other references:
- http://puppetlabs.com/
- https://www.vagrantup.com/

## License
dr-pint: Edit clone whichever you like
