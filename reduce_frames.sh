#!/bin/bash
mkdir data_30;

# extract every 10th frame from each video, up to 30 frames
for video in data/*/; do \

  # extract directory name and create directory in data_30
  filename=$(echo $video | awk '{gsub("data/", ""); print}');
  mkdir data_30/$filename;

  for n in $(seq 0 10 299); do \
    # skip a frame if multiple 'faces' were detected for that frame
    while [ -f $video$n'_2'.png ]; do \
      n=$((n+1));
    done;

    # move frame to new directory
    mv $video$n.png data_30/$filename;
  done; \
  echo $video;
done
