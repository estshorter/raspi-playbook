#!/bin/bash -eu
SCRIPT_DIR=$(cd $(dirname $0); pwd)

if [ ! -d co2logger ]; then
    git clone --filter=blob:none --recursive https://github.com/estshorter/co2logger.git
fi
cp ${SCRIPT_DIR}/co2mon-configs.json ./co2logger/misc/configs.json
cd co2logger

# build
cmake -DCMAKE_BUILD_TYPE=Release -B build -GNinja
cmake --build build

# install
sudo cmake --install build

sudo cp misc/index.html /var/www/html
if [ ! -e /etc/nginx/sites-available/default.old ];then
	sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old
fi
sudo cp misc/default /etc/nginx/sites-available/

sudo ldconfig

sudo systemctl daemon-reload
sudo systemctl restart nginx

sudo udevadm control --reload-rules
sudo udevadm trigger

