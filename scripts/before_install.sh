#!/usr/bin/env bash

# clean codedeploy-agent files for a fresh install
sudo rm -rf /home/Amazon Linux /install

# install CodeDeploy agent
sudo yum -y update
sudo yum -y install ruby
sudo yum -y install wget
cd /home/Amazon Linux
wget https://aws-codedeploy-ap-south-1.s3.amazonaws.com/latest/install
sudo chmod +x ./install 
sudo ./install auto

# update os & install python3
sudo yum update
sudo yum install -y python3 python3-dev python3-pip python3-venv
pip install --user --upgrade virtualenv

# delete app
sudo rm -rf /home/Amazon Linux/django-aws_cicd
