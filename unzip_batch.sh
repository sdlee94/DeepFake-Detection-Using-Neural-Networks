#!/bin/bash

# unzip a deepfake-detection-faces-part-i-j.zip file,
# name its associated metadata file with 'metatdata_i-j.csv', and append it to data/metadata.csv
unzip data/deepfake-detection-faces-part-$1.zip -d data;
mv data/metadata.csv data/metadata_$1.csv;

# Run the following after unzipping everything to obtain a single metadata file:
# cat data/metadata*.csv | grep -v "filename,split,original,label" > data/metadata.csv;
# sed -i '1 i\filename,split,original,label' data/metadata.csv

#rm data/deepfake-detection-faces-part-$1.zip
