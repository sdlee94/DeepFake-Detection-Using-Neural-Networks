#!/bin/bash

# obtain number of directories (unique videos) in data/
ls -l data | grep -v "metadata" | wc -l
