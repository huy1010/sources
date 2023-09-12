#!/bin/bash -xe
yum update -y
yum install -y python3-pip
pip3 install awscli
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64" -o /usr/local/bin/eksctl
chmod +x /usr/local/bin/eksctl
curl --silent --location -o /usr/local/bin/kubectl "https://dl.k8s.io/release/$(curl --location -s https://dl.k8s.io/release/stable.txt)/bin/$(uname -s)/amd64/kubectl"
chmod +x /usr/local/bin/kubectl
usermod -aG docker ec2-user
yum install -y git
echo "install successfully"
