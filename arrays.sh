#!/bin/bash

#commit with message preceding of branch name

pref="a;b cd;ef"
spl=(${pref//;/ })
echo ${spl[-1]}
#result = ef
