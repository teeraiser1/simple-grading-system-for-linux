#!/bin/bash

source config.sh

rm ./${submissions_dir}/*
rm ./${compl_dir}/*
rm ./${uncompl_dir}/*
rm ./${outputs_dir}/*

cp ./${origianls_dir}/* ./${submissions_dir}/

