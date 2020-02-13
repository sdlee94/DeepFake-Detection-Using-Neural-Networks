# DeepFake Detection Model

## Introduction

In an effort to curb the emerging societal threat of DeepFakes (AI manipulated media), a challenge was built in collaboration between Amazon, Facebook, Microsoft and others to invite enthusiasts of all backgrounds to compete for the most accurate DeepFake detection model (https://www.kaggle.com/c/deepfake-detection-challenge/overview).

## Resources

All python code was written and run in a conda environment with python version 3.6 and the following packages:
- **Data Science**: numpy version 1.16.4, pandas
- **Plotting**: matplotlib, seaborn
- **Machine Learning**: keras-gpu, tensorflow version 1.9, scikit-learn
- **Other**: pillow, pydot, jupyter, nltk, gensim

And lastly, lots of coffee

## Dataset

Due to computational limitations, I made use of pre-processed data which consisted of 160x160 resolution images of isolated faces from the original videos. Credits goes to Hieu Phung for generating this dataset - information about the pre-processing workflow can be found at https://www.kaggle.com/phunghieu/deepfake-detection-face-extractor.

The dataset is split into several parts, with a zip file containing a variable number of folders with each containing a set of images pertaining to a unique video. Each zip file also comes with a metadata.csv file which contains the ids and labels of the associated 'videos'.
