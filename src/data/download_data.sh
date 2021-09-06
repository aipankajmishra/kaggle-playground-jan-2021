#!/bin/sh
kaggle competitions download -p data/raw -c tabular-playground-series-jan-2021
unzip data/raw/*.zip
rm -rf data/raw/*.zip
