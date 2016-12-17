#!/bin/bash
gnome-terminal -e "bash -c \"title TeachingServer; ssh cim; exec bash\""
xdotool key ctrl+shift+t -e "bash -c \"title SCP::Files; exec bash\""