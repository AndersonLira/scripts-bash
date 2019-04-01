#!/bin/bash

first_day=0 #first sprint was in first day

day_of_year=$(date +%j ) 
day_base=$(expr $day_of_year - $first_day)

reduce=$(expr $day_base % 14)

target_day=$(date -d "-$reduce days")
DAY=$(date -d "$target_day" '+%d')
MONTH=$(date -d "$target_day" '+%m')
proj=VFPTWEB2-
echo Creating new branch features/s-$DAY$MONTH/$proj$1
git checkout -b features/s-$DAY$MONTH/$proj$1