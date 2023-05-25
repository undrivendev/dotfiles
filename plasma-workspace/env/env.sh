#!/bin/bash

# Firefox on Wayland
export MOZ_ENABLE_WAYLAND=1

# Qt apps on Wayland
export QT_QPA_PLATFORM=wayland

# SSH askpass
export SSH_ASKPASS='/usr/bin/ksshaskpass'
export SSH_ASKPASS_REQUIRE=prefer