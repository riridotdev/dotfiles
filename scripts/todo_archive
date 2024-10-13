#!/usr/bin/sh

set e

if [ ! -d ~/todo_archive ]; then
    mkdir ~/todo_archive
fi

if [ $(date +%H) -gt 5 ]; then
    date_offset="-1 days"
else
    date_offset="-2 days"
fi

archive_date=$(date --date "$date_offset" +%Y-%m-%d)

sed -z 's/.*\DONE:\n\(.*\)/\1/' ~/todo >> ~/todo_archive/$archive_date

sed -i -z 's/DONE:\n\(.*\)/DONE:\n/' ~/todo
