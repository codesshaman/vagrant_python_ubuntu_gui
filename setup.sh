#!/bin/bash

echo "[Software] : install all soft..."

su - vagrant -c "sudo apt update && sudo apt install -y \
slim \
snapd \
xinit \
xdg-utils \
lxsession \
python3.11 \
libnotify4 \
qttools5-dev \
xserver-xorg-core"

echo "[Pycharm] : install pycharm..."

su - vagrant -c "sudo snap install pycharm-community --classic"

echo "[Pycharm] : copy pycharm icon..."

cp /home/vagrant/project/pycharm.png /usr/share/icons/pycharm.ico

echo "[Pycharm] : create pycharm label..."

cat << EOF > /usr/share/applications/pycharm.desktop
[Desktop Entry]
Name=Pycharm
Comment=Best IDE for python
Keywords=pycharm
Exec=pycharm-community
Terminal=false
Type=System
Icon=/usr/share/icons/pycharm.ico
Categories=System
NoDiplay=false
EOF

echo "[Python] : change default version..."

su - vagrant -c "python3 --version"

### Wbox Guest Addition
### Install for clipboard
### And 'drag and drop'

# echo "[Guest Additions] : installing..."

### Add your version of
### Vbox to this variable:
# vbox_version = '6.1.34'

#su - vagrant -c "wget -c \
# http://download.virtualbox.org/virtualbox/$vbox_version/VBoxGuestAdditions_$vbox_version.iso"
#mkdir /mnt/guest
#mount VBoxGuestAdditions*.iso -o loop /mnt/guest
#cd /mnt/guest
#sh VBoxLinuxAdditions.run --nox11
#cd /home/vagrant
#rm VBoxGuestAdditions*.iso
#umount /mnt/guest
#rm -r /mnt/guest

echo "[machine : $(hostname)] has been setup succefully!"
