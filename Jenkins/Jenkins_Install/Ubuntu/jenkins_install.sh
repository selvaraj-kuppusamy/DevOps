#!/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#update the system
echo "Your! system is updating!..."
sudo apt update
#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#install java on ubuntu
#install openJDK
echo "Installing java on ubuntu!..."
echo "Install open Java Development Kit..."
sudo apt install default-jdk
echo "open Java Development kit is sucessfully installed you system!!!"
#java version
echo "Checking Java Version!.."
java --version 
#insatall jenkins
echo "Adding Repositories!.."
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
#again update the system
echo "Again Your! system is updating!..."
sudo apt update
echo "Jenkins is installing!..."
sudo apt install jenkins
#start jenkins
echo "Jenkins services is enabling!.."
sudo systemctl enable jenkins
echo "Jenkins services is starting!.."
sudo systemctl start jenkins
echo "Checking Jenkins status!.."
sudo systemctl status jenkins --no-pager
echo "Jenkins is Successfully Installed!."


