#!/bin/bash

class_dir=$(basename $(dirname $(realpath $0)))
assignment_dir=$(basename $(dirname $(dirname $(realpath $0))))

origianls_dir="originals"
submissions_dir="submitions"
outputs_dir="outputs"
compl_dir="completed"
uncompl_dir="uncompleted"

input_txt="in.txt"
answer_txt="ans.txt"
exec_file="a.out"
