#!/bin/bash

clear
echo "Bahaa's Arch Project..."
sleep 3
bash 1setup.sh
echo "Done Setup"
sleep 3

clear
bash 2part.sh
echo "Deno Partitioning"
sleep 3

clear
bash 3install.sh
echo "Done Installing"
sleep 3

clear
bash 4configs.sh
echo "Done Configuring"
sleep 3

clear
bash 5finishing.sh

cd
clear

echo "Done installing thanks to bahaa"
echo "when you reboot and log in type i then enter"
