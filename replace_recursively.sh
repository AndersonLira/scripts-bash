#!/bin/bash

#replace string on file recursively

find /directory/to/search -name \*.go -exec sed -i "s/pattern/new_value/g" {} \;