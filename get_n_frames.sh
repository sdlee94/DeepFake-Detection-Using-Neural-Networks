#!/bin/bash

for dir in $1/*/; do \
    length=$(ls -f $dir/* | wc -l); # ls -f to turn off sorting (save runtime)
    echo $dir, $length >> data_lengths.csv;
    echo $dir;
done
