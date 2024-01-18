#!/bin/bash

wd=$(dirname $0);

files=()

for file in ./in/*; do
    file_number=${file:7:1}
    file_name=./out/out$file_number.txt
    games_counter=$(cat $file)
    python -m main $games_counter > $file_name
    files+=($file_name)
done

python -m html_report ${files[*]} > ./report/index.html
