#!/bin/bash

#commit with message preceding of branch name

br=$(git branch | grep \* | cut -d ' ' -f2)
spl=(${br//\// })
prefix=${spl[-1]}
git commit -m "$prefix | $1"
