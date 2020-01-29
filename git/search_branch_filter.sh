#!/bin/bash
#filter by date and
git log --pretty=format:"%ad - %an: %s" --after="2016-01-31" --until="2017-03-10" 
#author
git log --author="John\|Mary"
#message
git log --grep="JRA-224:"
#file
git log -- foo.py bar.py
#content
git log -S"Hello, World!"
