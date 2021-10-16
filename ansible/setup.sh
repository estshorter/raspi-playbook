#!/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# sudo apt update
# sudo apt install -y ansible
ansible-playbook -i localhost, -c local ${SCRIPT_DIR}/setup.yml

