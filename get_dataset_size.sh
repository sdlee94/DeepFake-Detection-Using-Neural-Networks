#!/bin/bash

# obtain number of directories (unique videos) in a directory ($1)
ls -l $1 | grep -E -v "metadata|\.zip" | wc -l
