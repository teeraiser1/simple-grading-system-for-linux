#!/bin/bash

source config.sh

if [ ! -d ./$origianls_dir ]; then
    mkdir $origianls_dir
fi
if [ ! -d ./$submissions_dir ]; then
    mkdir $submissions_dir
fi
if [ ! -d ./$outputs_dir ]; then
    mkdir $outputs_dir
fi
if [ ! -d ./$output_dir ]; then
    mkdir $output_dir
fi
if [ ! -d ./$compl_dir ]; then
    mkdir ./$compl_dir
fi
if [ ! -d ./$uncompl_dir ]; then
    mkdir ./$uncompl_dir
fi

touch $input_txt $answer_txt
