#!/bin/bash

source config.sh

read student_name

rm ./${outputs_dir}/$student_name*
mv ./${submissions_dir}/$student_name* ./${uncompl_dir}
