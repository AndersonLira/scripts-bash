#!/bin/bash

#replace string on file recursively

find /directory/to/search -name "*.fileExtension" | xargs grep -l ".ocurrenceFoo"