#!/bin/bash
a=$1
b=$2
rename -v -n "s/$a/$b/g" $3*
