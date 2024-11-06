#!/bin/bash

source config.sh

for file in ./${submissions_dir}/*.c
do
  filename=$(basename $file)
  filename="${filename%.*}"
  filename="${filename##*_}.out"

  if [ -f $file ]; then
    echo "compiling $file ..."
    gcc -o $filename $file
  fi
done
