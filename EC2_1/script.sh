#!/bin/bash

sudo yum update all
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

echo "<title>Shreyas Khodre</title><h1>This is a demo file</h1>" > /var/www/html/index.html

