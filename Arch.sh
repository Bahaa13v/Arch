#!/bin/bash

clear

echo -e "
 ____        _                                   _     _____           _           _   
|  _ \      | |                   /\            | |   |  __ \         (_)         | |  
| |_) | __ _| |__   __ _  __ _   /  \   _ __ ___| |__ | |__) | __ ___  _  ___  ___| |_ 
|  _ < / _| | |_ \ / _| |/ _| | / /\ \ | |__/ __| |_ \|  ___/ |__/ _ \| |/ _ \/ __| __|
| |_) | (_| | | | | (_| | (_| |/ ____ \| | | (__| | | | |   | | | (_) | |  __/ (__| |_ 
|____/ \__,_|_| |_|\__,_|\__,_/_/    \_\_|  \___|_| |_|_|   |_|  \___/| |\___|\___|\__|
                                                                     _/ |              
                                                                    |__/               
"

sleep 5
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
echo "when you reboot and login just type i then enter"
