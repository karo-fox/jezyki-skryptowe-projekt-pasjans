#!/bin/bash

wd=$(dirname $0);

if [ ! -d  "$wd/out" ]; then
    mkdir $wd/out;
fi

# if [ ! -d "$wd/in" ]; then
#     mkdir $wd/in;
# fi

if [ ! -d  "$wd/backup" ]; then
    mkdir $wd/backup;
fi

count=$(ls $wd/out | wc -l);
file_number=$(expr $count + 1);

python -m main > $wd/out/out$file_number.txt;

if [ $(ls $wd/backup | wc -l) -eq 0 ]; then
    cat $wd/out/out$file_number.txt > $wd/backup/backup.txt;
fi
