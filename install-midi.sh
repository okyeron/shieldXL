#!/usr/bin/env bash

# be sure you already have the shieldXL repo
# git clone https://github.com/okyeron/shieldXL.git


cd ~/shieldXL
git clone https://github.com/okyeron/ttymidi.git
cd ttymidi
make
sudo make install
cd ../

sudo chmod 644 /home/we/shieldXL/install/systemd/*
sudo cp /home/we/shieldXL/install/systemd/ttymidi* /etc/systemd/system
sudo systemctl enable ttymidi0.service 

# sudo cp --remove-destination /home/we/shieldXL/install/boot/config.txt  /boot/config.txt
sudo cp --remove-destination /home/we/shieldXL/install/99-com.rules  /etc/udev/rules.d/99-com.rules

git clone https://github.com/mzero/amidiminder.git
cd amidiminder
make
sudo dpkg -i build/amidiminder.deb
sudo cp --remove-destination /home/we/shieldXL/install/amidiminder.rules  /home/we/shieldXL/amidiminder.rules
sudo chown we:we /home/we/shieldXL/amidiminder.rules
sudo chmod 777 /home/we/shieldXL/amidiminder.rules
sudo cp --remove-destination /home/we/shieldXL/install/systemd/amidiminder.service /lib/systemd/system/amidiminder.service


sudo reboot