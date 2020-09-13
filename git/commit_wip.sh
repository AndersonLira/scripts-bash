#!/bin/bash

#commit with message preceding of branch name

argsSize=$#

#should have just one argument
if [ "$argsSize" -gt 1 ]; then
    echo "should have just one argument: comment"
else
	br=$(git branch | grep \* | cut -d ' ' -f2)
	spl=(${br//\// })
	prefix=${spl[-1]}
	git commit -m "WIP: $prefix | $1"
fi