#!/bin/bash
sudo apt -y install libgtk-3-dev golang
(cd ~/Downloads; git clone https://github.com/nwg-piotr/nwg-look; cd nwg-look; make build && sudo make install)
(cd ~/Downloads; git clone https://github.com/vinceliuice/Colloid-icon-theme; cd Colloid-icon-theme; ./install.sh -s default -t yellow)
