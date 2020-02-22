#!/bin/bash

# unzip a deepfake-detection-faces-part-i-j.zip file,
# name its associated metadata file with 'metatdata_i-j.csv', and append it to data/metadata.csv
unzip data/deepfake-detection-faces-part-$1.zip -d data;
mv data/metadata.csv data/metadata_$1.csv;
awk 'NR>1' data/metadata_$1.csv >> data/metadata.csv;

#rm data/deepfake-detection-faces-part-$1.zip
