#!/bin/bash
set -e
############################################################
#                                                          #
# Fedora 29 install and set-up script from minimal install #
#                                                          #
# XFCE Desktop                                             #
#                                                          #
# Author:  Seth Dawson                                     #
#                                                          #
############################################################

# Add the free and the nonfree RPM Fusion repositories and the Vivaldi repository

# echo "Adding Additional Repositories"

# su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
# sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo

# Add XFCE4 GUI
# echo "Add XFCE"
# sudo dnf -y group install "Xfce Desktop"
# echo "exec /usr/bin/xfce4-session" >> ~/.xinitrc
# su -c systemctl set-default graphical.target

echo "Update"

sudo dnf -y --refresh upgrade

echo "Installing Command Line Packages"

sudo dnf -y install github
sudo dnf -y install flatpak

echo "Installing Additional Panel Packages"

sudo dnf -y install xfce4-whiskermenu-plugin

echo "Installing Category Accessories"

sudo dnf -y install catfish-python3
sudo dnf -y install cmatrix
sudo dnf -y install redshift
sudo dnf -y install xfburn

echo "Installing Category Administration"

sudo dnf -y install system-config-printer

echo "installing Category Development"

sudo dnf -y install geany
sudo dnf -y install meld

echo "Installing Category Games"

#sudo dnf -y install steam
#sudo dnf -y install supertuxkart

echo "Installing Category Graphics"

sudo dnf -y install gimp


echo "Installing Cagegory Internet"

sudo dnf -y install firefox
sudo dnf -y install vivaldi-stable

