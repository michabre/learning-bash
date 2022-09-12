
- serve a static site from Github



```shell
# update the instance
sudo yum update

#switch to root
sudo su

# install apache
yum install httpd -y

# start apache
systemctl start httpd.service

# enable service
systemctl enable httpd.service

# check apache status 
systemctl status httpd.service

# test index.html
curl localhost:80

# install git
yum install git

# add some code
git clone https://github.com/michabre/simple-frontend-with-gulp.git .





```
