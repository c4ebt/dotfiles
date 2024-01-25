#!/bin/bash
(cd ~/Downloads; git clone https://github.com/mortie/swaylock-effects; cd swaylock-effects; meson build && ninja -C build && sudo ninja -C build install)
