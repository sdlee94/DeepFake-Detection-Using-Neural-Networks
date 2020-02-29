#!/bin/bash

# get all directory names for train and test data into txt files
awk 'NR>1' data/metadata_$1.csv | \
cut -d ',' -f1 | \
awk '{gsub(".mp4", "");print}' > train_files.txt;

awk 'NR>1' data/metadata_$2.csv | \
cut -d ',' -f1 | \
awk '{gsub(".mp4", "");print}' > test_files.txt;


# make train and test directories
mkdir train test;

# using the txt files made by the above code,
# move data into their appropriate directories
for dir in $(cat train_files.txt); do \
  mv data/$dir train; \
  echo $dir; \
done

for dir in $(cat test_files.txt); do \
  mv data/$dir test; \
  echo $dir; \
done

#mv data/metadata_$1.csv train/metadata.csv;
#mv data/metadata_$2.csv test/metadata.csv;
