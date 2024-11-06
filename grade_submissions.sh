#!/bin/bash

source config.sh

for file in ./${submissions_dir}/*.c
do
  filename=$(basename $file)
  filename="${filename%.*}"

  if [ -f $file ]; then
    echo "checking $file ..."
    output_file="./${outputs_dir}/${filename}_out.txt"
    grade_file="./${outputs_dir}/${filename}_gra.txt"


    gcc $file 2>> $grade_file
    echo "--------------------" >> $grade_file
    if [ -e "./a.out" ]; then
        ./${exec_file} < $input_txt >> $output_file
        diff -dwb $output_file $answer_txt >> $grade_file
        mv ${file} ./${compl_dir}
        rm $exec_file
    else
        echo "Compile Error" >> $grade_file
        mv ${file} ./${uncompl_dir}
    fi
  fi
done

cp -r ./${outputs_dir} ~/VirtualBox_Shared/${assignment_dir}/"${outputs_dir}_${class_dir}"

