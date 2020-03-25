# DeepFake Detection Model

## Introduction
---

For my BrainStation Data Science capstone project, I focused on building a **DeepFake** detection model using **Artificial Intelligence (AI)**. What are DeepFakes, you ask? Take a look at this GIF. Which one do you think is the original clip?

<p align="center">
  <img src="https://github.com/sdlee94/BrainStation_Capstone/blob/master/deepfake.gif"/>
  <a href="https://tenor.com/view/deep-fakes-ctrl-shift-face-smiles-shrugs-gif-14641388">Source</a>
</p>

As you probably gathered, DeepFakes are AI manipulated videos and they usually involve the replacement of a person's face with another. DeepFakes can do more than just swap faces though - even what a person says in a video is subject to alteration. Were you able to identify which of the above was real and which was fake? If you don't know what movie it's from, you likely had to guess - just goes to show how good this technology already is and it's only going to improve which poses a great risk to society. Imagine if DeepFakes were to come out today of health officials and political figures saying that the Covid-19 pandemic is over, everyone can go out and socialize - the consequences would be disastrous!

In an effort to curb the emerging threat of DeepFakes, a [**Kaggle competition**](https://www.kaggle.com/c/deepfake-detection-challenge/overview) was built in collaboration between Amazon, Facebook, Microsoft and Partnership on AI to invite enthusiasts of all backgrounds to compete for the best performing DeepFake detection model. As someone who loves challenging problems and has genuine concerns about DeepFakes, I chose this topic as my capstone project. Over the course of ~7 weeks I performed an end-to-end Data Science workflow in which I obtained data, processed it and trained several deep learning models to differentiate between real and fake videos. To date, my best model achieved **96% precision** (of all predicted fakes, 96% were indeed fake) and **83% specificity** (able to correctly identify 83% of real videos) using just a single frame per video. Below details the tools used for this project and an overview of the steps I took to get there!

## Resources
---

### Dataset

Due to computational and time limitations, I opted to use a pre-processed dataset which consisted of 160x160 resolution images of extracted faces from the original videos. Credits goes to *Hieu Phung* for generating this [**dataset**](https://www.kaggle.com/c/deepfake-detection-challenge/discussion/128954) - information about the pre-processing workflow can be found [**here**](https://www.kaggle.com/phunghieu/deepfake-detection-face-extractor).

The dataset was split into several parts, with a zip file containing a variable number of folders with each containing a set of images pertaining to a unique video. Each zip file also came with a metadata.csv file which had the ids and labels of the associated 'videos'. Each data batch came in a zip file in the naming format of 'deepfake-detection-faces-part-i-j.zip' where 'i-j' refers to the batch number. I created a bash script *unzip_batch.sh* to unzip a zip file given a batch number and appropriately rename its associated metadata file with 'metadata_i-j.csv'. All metadata were consolidated into a single metadata file with this simple bash command:

`cat data/metadata*.csv > data/metadata.csv`

### Tools Used
- Bash
- Python
- Github
- Google Colab

#### Python Packages:
- **Data Science**: numpy, pandas
- **Plotting**: matplotlib
- **Machine Learning**: tensorflow version 2.1, keras
- **Other**: jupyter, os, imageio, pickle, h5py

### Exploratory Data Analysis and Data Cleaning
---
