#!/bin/bash

echo "vm.swappiness = 10" | sudo tee -a /etc/sysctl.conf
 echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf

sudo sysctl -w vm.swappiness=10

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


sudo dnf install ntfs-3g
sudo dnf install doublecmd-common doublecmd-gtk


sudo dnf install @virtualization
sudo dnf install virt-manager
sudo systemctl enable virtqemud.socket
sudo systemctl start virtqemud.socket
sudo systemctl status virtqemud.socket
