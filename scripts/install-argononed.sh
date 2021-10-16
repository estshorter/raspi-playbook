#!/bin/bash -eu
SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ ! -d argononed ]; then
    git clone --filter=blob:none https://gitlab.com/DarkElvenAngel/argononed.git
fi
cd argononed
git switch 0.3.x
./install

cd ${SCRIPT_DIR}
