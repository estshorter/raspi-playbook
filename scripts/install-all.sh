#!/bin/bash -eu
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

./install-argononed.sh
./install-co2meter.sh
./install-mho-c303-timesync.sh
