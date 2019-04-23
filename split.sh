#!/bin/bash

#split example

pref="a;b cd;ef"
spl=(${pref//;/ })
echo ${spl[-1]}
#result = ef

IN="ABC;DEF;ghij;x  lmno"

IFS=';' read -ra ADDR <<< "$IN"
for i in "${ADDR[@]}"; do
     echo "$i"
done


 while IFS=';' read -ra ADDR; do
      for i in "${ADDR[@]}"; do
          echo "$i"
      done
 done <<< "$IN"