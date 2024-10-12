#!/usr/bin/env bash

set -e

device_name=$(lsblk -l -o NAME,LABEL | grep '\sriri' | cut -f1 -d' ')

sudo cryptsetup open /dev/${device_name} riri
sudo mount /dev/mapper/riri ~/mount/riri
