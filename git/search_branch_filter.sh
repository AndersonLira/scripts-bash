#!/bin/bash
#filter by date and author
git log --pretty=format:"%ad - %an: %s" --after="2016-01-31" --until="2017-03-10" 

