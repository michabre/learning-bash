# Linus Daemons: Service and Process Management

## Description

- services that make your Linux system tick
- daemons: background services - printing, networking, programs, etc
- process: instance of a running program
- **systemd** : the master daemon, manager and init of all services

## Commands

```shell
# show all processees
ps -aux

# show show specific process
ps -aux | grep nano # show only status of Nano

# process tree
pstree

# start and stop processes
# query or send control commands to the system manager
systemctl start <dameon process>
systemctl stop <dameon process>

# show all active daemons
sudo systemctl list-units

# show active services
sudo systemctl list-units -t service

# find services not parsed or part of memory
sudo systemctl list-unit-files | grep nginx

# get status of a service not parsed or part of memory
sudo systemctl status nginx<service>

# enable nginx (service)
sudo systemctl enable nginx
 
# check if nginx (service) is enabled
sudo systemctl is-enabled nginx

# check what systemd is logging
sudo journalctl -xe



```
