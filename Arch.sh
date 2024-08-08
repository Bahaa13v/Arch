#!bin/bash

echo "Bahaa's Arch Project..."
sleep 3
bash 1setup.sh
echo "Done Setup"
sleep 3


bash 2part.sh
echo "Deno Partitioning"
sleep 3


bash 3install.sh
echo "Done Installing"
sleep 3

bash 4configs.sh
echo "Done Configuring"
sleep 3

bash 5finishing.sh
