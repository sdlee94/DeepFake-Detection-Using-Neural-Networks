#!/bin/bash

#make train and test directories
mkdir train validation test;

# train-validation-test split. Keeping original files
awk 'NR>1' metadata_train.csv | cut -d ',' -f1 | \
xargs -a - cp -r -t train;

awk 'NR>1' metadata_validation.csv | cut -d ',' -f1 | \
xargs -a - cp -r -t validation;

awk 'NR>1' metadata_test.csv | cut -d ',' -f1 | \
xargs -a - cp -r -t test;
