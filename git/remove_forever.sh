#!/bin/bash
git filter-branch --force --index-filter  'git rm --cached --ignore-unmatch FILE_REMOVE_FOREVER_SENVITIVE_DATA_EXAMPLE'   --prune-empty --tag-name-filter cat -- --all
