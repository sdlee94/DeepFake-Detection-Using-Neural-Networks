#!/bin/bash

# unzip a deepfake-detection-faces-part-i-j.zip file,
# name its associated metadata file with 'metatdata_i-j.csv', and remove the zip file
unzip data/deepfake-detection-faces-part-$1.zip -d data;
mv data/metadata.csv data/metadata_$1.csv;
#rm data/deepfake-detection-faces-part-$1.zip
