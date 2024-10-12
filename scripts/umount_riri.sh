#!/usr/bin/env bash

set -e

sudo umount ~/mount/riri
sudo cryptsetup close riri
