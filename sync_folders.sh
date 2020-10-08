#!/bin/bash
#rsync local to remote and
#remote to local

rsync -avz –progress -e "ssh -i ~/.ssh/your_key"  ~/local/source/folder user@host:destination/


rsync -chavzP -e "ssh -i ~/.ssh/your_key" user@host:folder ~/local/destination/path
