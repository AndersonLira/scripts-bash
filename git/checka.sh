#!/bin/bash

lines=()
while IFS= read -r line; do
    lines+=( "$line" )
done < <( git branch )

for element in "${lines[@]}"
do
	if [[ $element == *"$1"* ]]; then
	    branch="${element#"${element%%[![:space:]]*}"}"
	    branch="${branch%"${branch##*[![:space:]]}"}"   
	  git checkout "${branch}"
	fi	
done

