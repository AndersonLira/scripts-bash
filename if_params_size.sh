#!/bin/bash

#commit with message preceding of branch name

argsSize=$#

#should have just one argument
#the name of file is alwais in list ($0)
if [ "$argsSize" -eq 2 ]; then
    echo "should have just one argument: param 1"
else
    echo "there is correct params" $1
fi

