#!/bin/bash

## Install software

# echo "[Software] : removing oldest python version..."

# apt purge -y python3

# Do apt upgrade

#echo "[Software] : install linux kernel headers..."

#apt update && apt upgrade -y && apt install -y \
#kernel-headers-$(uname -r) \
#kernel-devel-$(uname -r)

# echo "[Software] : add pycharm repository..."

# Reposytori from sloppy project:
# https://neuro.debian.net/pkgs/pycharm-community-sloppy.html

# wget -O- http://neuro.debian.net/lists/bullseye.de-m.full | tee /etc/apt/sources.list.d/neurodebian.sources.list

# echo "[Software] : add pycharm repository key..."

# apt-key adv --recv-keys --keyserver hkps://keyserver.ubuntu.com 0xA5D32F012649A5A9

# echo "[Software] : install all dependencies..."

# apt update && apt install -y wget build-essential g++ \
# libbz2-dev libncursesw5-dev unzip libreadline-dev make \
# libssl-dev zlib1g-dev libsqlite3-dev tk-dev libgdbm-dev \
# libc6-dev libffi-dev openbox xinit kitty libgl1-mesa-dev \

## Install python

# echo "[Python] : installing..."

# su - vagrant -c "wget $1"
# su - vagrant -c "tar xf Python-3.11.1.tar.xz" && cd Python-3.11.1
# ./configure --enable-optimizations && make && make install
# cd /home/vagrant/ && rm -rf Python-3*

su - vagrant -c "sudo apt update && sudo apt install -y \
slim \
snapd \
xinit \
xdg-utils \
lxsession \
python3.11 \
libnotify4 \
xserver-xorg-core"
# slim lightdm \
# su - vagrant -c "sudo apt install -y openbox python3"

# systemctl enable lxdm

cp /home/vagrant/project/pycharm.png /usr/share/icons/pycharm.ico

su - vagrant -c "python3 --version"

su - vagrant -c "pip3 install PyQt6"

su - vagrant -c "sudo snap install pycharm-community --classic"

su - vagrant -c "sudo apt install -y qttools5-dev"

cat << EOF > /usr/share/applications/pycharm.desktop
[Desktop Entry]
Name=Pycharm
Comment=Best IDE for python
Keywords=pycharm
Exec=pycharm-community
Terminal=false
Type=Application
Icon=/usr/share/icons/pycharm.ico
Categories=System
NoDiplay=false
EOF

## Install all necessary packages

# echo "[Python] : downloading PyQt6..."

# su - vagrant -c "pip3 install PyQt6"

# ## Install qt-designer and pycharm

# echo "[Python] : installing qt-designer and pycharm..."

# apt install -y qttools5-dev pycharm-community-sloppy

## Get guest additions

#echo "[VBox] : download guest additions..."

#su - vagrant -c "wget -c $2"
#mkdir /mnt/guest
#mount VBoxGuestAdditions*.iso -o loop /mnt/guest
#cd /mnt/guest
#sh VBoxLinuxAdditions.run --nox11
#cd /home/vagrant
#rm VBoxGuestAdditions*.iso
#umount /mnt/guest
#rm -r /mnt/guest

echo "[machine : $(hostname)] has been setup succefully!"
