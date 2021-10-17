#!/bin/bash

source ~/farm-bin/data.bash
source ~/farm-bin/functions.bash

coins configure --log-level $LOG_LEVEL
coins init --fix-ssl-permissions
