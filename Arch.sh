#!bin/bash

echo " ____        _                                       _     _____           _           _   
|  _ \      | |                       /\            | |   |  __ \         (_)         | |  
| |_) | __ _| |__   __ _  __ _ ___   /  \   _ __ ___| |__ | |__) | __ ___  _  ___  ___| |_ 
|  _ < / _` | '_ \ / _` |/ _` / __| / /\ \ | '__/ __| '_ \|  ___/ '__/ _ \| |/ _ \/ __| __|
| |_) | (_| | | | | (_| | (_| \__ \/ ____ \| | | (__| | | | |   | | | (_) | |  __/ (__| |_ 
|____/ \__,_|_| |_|\__,_|\__,_|___/_/    \_\_|  \___|_| |_|_|   |_|  \___/| |\___|\___|\__|
                                                                         _/ |              
                                                                        |__/               
"

bash 1setup.sh

echo "Done Setup"

bash 2part.sh

echo "Done Part"

bash 3install.sh

echo "Done Installing"

bash 4configs.sh

echo "Done Configuring"

bash 5finishing.sh
