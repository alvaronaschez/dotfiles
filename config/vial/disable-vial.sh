#!/usr/bin/bash
sudo rm /etc/udev/rules.d/99-vial.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
