#!/bin/bash

arr=( "A" "B" "C" )

for var in "${arr[@]}"
do
  echo "${var}"
  # do something on $var
done