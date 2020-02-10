# DeepFake Detection Model

## Introduction

In an effort to curb the emerging societal threat of DeepFakes (AI manipulated media), a challenge was built in colloboration between Amazon, Facebook, Microsoft and others to invite enthusiasts of all backgrounds to compete for the most accurate DeepFake detection model (https://www.kaggle.com/c/deepfake-detection-challenge/overview).

## Setup

Packages used:
- Data Science: numpy, pandas
- Plotting: matplotlib, seaborn
- Machine Learning: keras

conda create -n keras-gpu python=3.6 numpy scipy keras-gpu

## Dataset

Due to computational limitations, I made use of pre-processed data which consisted of 160x160 resolution images of isolated faces from the original videos. Credits goes to _ for generating this dataset - information about the workflow involved in their pre-processing can be found at _.  
