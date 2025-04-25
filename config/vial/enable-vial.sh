#!/usr/bin/bash
sudo cp ~/dotfiles/config/vial/99-vial.rules /etc/udev/rules.d
sudo udevadm control --reload-rules
sudo udevadm trigger
