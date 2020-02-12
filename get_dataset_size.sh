#!/bin/bash

# obtain number of directories (unique videos) in a directory ($1)
ls -l $1 | grep -v "metadata" | grep -v ".zip" | wc -l
