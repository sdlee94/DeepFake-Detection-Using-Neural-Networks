#!/bin/bash

for dir in data/*/; do \
    length=$(ls -f $dir/* | wc -l); # ls -f to turn off sorting (save runtime)
    echo $dir, $length >> n_frames.csv;
    echo $dir;
done
