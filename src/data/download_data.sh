#!/bin/sh
rm -rf data/raw/*
kaggle competitions download -p data/raw -c tabular-playground-series-jan-2021
unzip data/raw/*.zip -d data/raw/
rm -rf data/raw/*.zip

train_file=$(find data/raw/ -type f -iname '*train*')
test_file=$(find data/raw/ -type f -iname '*test*')
sample_file=$(find data/raw/ -type f -iname '*sample*') 


mv $train_file data/raw/raw_train.csv
mv $test_file data/raw/raw_test.csv
mv $sample_file data/raw/raw_sample.csv

