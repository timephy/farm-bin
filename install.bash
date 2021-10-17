#!/bin/bash

source ~/farm-bin/color.bash
source ~/farm-bin/data.bash

if [ "$1" != 'farmer' ] && [ "$1" != 'harvester' ]; then
    echo First argument should be 'farmer' or 'harvester'.
    exit
fi

#

echo -e "${BLUE}$ ./install_repos.bash ${NC}"
./install_repos.bash

if [ "$1" == 'harvester' ]; then
    echo -e "${BLUE}$ ./install.bash ${NC}"
    ./create_mounts.bash
fi

echo -e "${BLUE}$ ./setup.bash ${NC}"
./setup.bash

if [ "$1" == 'harvester' ]; then
    echo -e "${BLUE}$ ./setup_harvester.bash ${NC}"
    ./setup_harvester.bash
fi
