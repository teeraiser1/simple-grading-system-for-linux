#!/bin/bash

source config.sh

echo "" > names.csv
for file in ./${submissions_dir}/*
do
  if [ -f $file ];then
    echo $(basename $file)
  fi
done
