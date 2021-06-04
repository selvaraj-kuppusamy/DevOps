#!/bin/sh

#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade
#update the system
echo "Your! system is updating!..."
sudo apt update
echo "Installing Docker Engine on Ubuntu!..."
echo "Uninstalling old versions!.."
sudo apt-get remove docker docker-engine docker.io containerd runc
echo "Install using the repository!..."
echo "Set up the repository!..."
echo "Your System is updating!...."
sudo apt-get update
echo "Install packages to allow apt to use a repository over HTTPS"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
echo "Add Docker's official GPG key!..."
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --batch --yes --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "To set up the stable repository"
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "Installling Docker Engine"
echo "Your System is updating!...."
sudo apt-get update
echo "Installing the latest version of Docker Engine and containerd!..."
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo "To install a specific version of Docker Engine!..."
echo "List the versions available in your repo!..."
sudo apt-cache madison docker-ce
echo "Install a specific version!..."
sudo apt-get install docker-ce=5:20.10.6~3-0~ubuntu-focal docker-ce-cli=5:20.10.6~3-0~ubuntu-focal containerd.io
echo "Check Docker Engine is installed correctly by running the hello-world image!.."
sudo docker run docker/whalesay cowsay Docker!
echo "Docker is Successfull Installed!..."



