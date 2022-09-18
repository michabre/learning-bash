# Bash Commands

```shell

# process status
ps

# identify current user
id

# hostname
hostname

#
uname

# network stuff
ifconfig

# network stuff with options
ip

# network status
netstat

# session stuff
ss

# similar to whoami, but tells you who else is logged into the system
who

# environtment variables
env

# hard drive stuff
lsblk

# are any usb's available
lsusb

# list of all open files
lsof

# get more info on a command
man <command>

# get help
<command> --help

# search for commands and documentation based on a term
apropos <term>

# view all users
cat /etc/passwd

# add user
sudo adduser thor

# quickly add user and give a home directory
sudo useradd thor -m

# update user password
sudo passwd thor

# change a user's name
sudo usermod -l punisher<new> frankcastle<current>

# become root user
sudo su -

# switch users
sudo su - spiderman

# edit sudoers file
sudo visudo

# delete user
sudo userdel spiderman

# create group
sudo groupadd avengers

# add user to group
sudo usermod -aG avengers

# remove user from a group
sudo gpasswd -d venom<user> avengers<group>

```
