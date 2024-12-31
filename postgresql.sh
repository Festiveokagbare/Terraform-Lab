#!/bin/bash

# Update all packages
sudo yum update -y

# Enable and install PostgreSQL 14
sudo amazon-linux-extras enable postgresql14
sudo yum install postgresql-server -y

# Initialize and start PostgreSQL
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Install and start Docker
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker

# Run an Apache HTTPD container
sudo docker run -d -p 8080:80 httpd
