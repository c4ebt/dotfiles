#!/bin/bash
(cd Downloads; git clone --recurse-submodules https://github.com/fairyglade/ly; cd ly; make; sudo make install installsystemd; sudo systemctl enable ly)
echo "wayland_cmd=~/start_sway.sh" >> /etc/ly/config.ini
