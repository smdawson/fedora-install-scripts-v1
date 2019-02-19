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

sudo dnf -y install git
sudo dnf -y install flatpak

echo "Sound"

sudo dnf -y install gstreamer
sudo dnf -y install gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-plugins-base
sudo dnf -y install volumeicon

echo "Installing Additional Panel Packages"

sudo dnf -y install xfce4-whiskermenu-plugin

echo "Installing Category Accessories"

sudo dnf -y install catfish-python3
sudo dnf -y install conky conky-mamager jq
sudo dnf -y install cmatrix
sudo dnf -y install redshift
sudo dnf -y install xfburn
sudo dnf -y install xfce4-notes-plugin
sudo dnf -y install lightdm-settings
sudo dnf -y install seahorse

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
sudo dnf -y install gpick
sudo dnf -y install inkscape
sudo dnf -y install ristretto

echo "Installing Cagegory Internet"

sudo dnf -y install firefox
sudo dnf -y install vivaldi-stable
sudo dnf -y install telegram-desktop
sudo dnf -y install hexchat
sudo dnf -y install qbittorrent

echo "Installing Multimedia"

sudo dnf -y install pragha
sudo dnf -y install vlc

echo "Installing Office"

sudo dnf -y install evince
sudo dnf -y install libreoffice
sudo dnf -y install thunderbird

echo "Installing System"

sudo dnf -y install baobab
sudo dnf -y install dconf-editor
sudo dnf -y install ffmpegthumbnailer
sudo dnf -y install glances
sudo dnf -y install grsync
sudo dnf -y install hddtemp
sudo dnf -y install htop
sudo dnf -y install i-nex
sudo dnf -y install lm_sensors
sudo dnf -y install numlockx
sudo dnf -y install neofetch
sudo dnf -y install samba
sudo dnf -y install screenfetch
sudo dnf -y install simple-scan
sudo dnf -y install sysstat
sudo dnf -y install vnstat
sudo dnf -y install unclutter

echo "Install zip and unzip packages"

sudo dnf -y install unace unrar sharutils uudeview arj cabextract file-roller

echo "###################################################"
echo "#####                                         #####"
echo "#####          Installation Complete          #####"
echo "#####                                         #####"
echo "###################################################"