#!/bin/bash

# unzip a deepfake-detection-faces-part-i-j.zip file,
# name its associated metadata file with 'metatdata_i-j.csv', and remove the zip file
batch_id=$(echo $1 | awk '{ gsub("deepfake-detection-faces-part-", ""); print }' | awk '{ gsub(".zip", ""); print }')

unzip data/$1;
mv data/metadata.csv > data/metadata$batch_id.csv
