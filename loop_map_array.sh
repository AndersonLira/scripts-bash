#!/bin/bash

arr=( "A" "B" "C" )

for var in "${arr[@]}"
do
  echo "${var}"
  # do something on $var
done


#map
declare -A animals=( ["moo"]="cow" ["woof"]="dog" ["meow"]="cat" )

animals['prw']='dove'

echo "${animals[moo]}"

for sound in "${!animals[@]}"
do 
  echo "$sound - ${animals[$sound]}" 
done

