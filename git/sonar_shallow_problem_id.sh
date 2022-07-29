#!/bin/bash

#The cause was a JGit bug. JGit does not support .gitattributes. I had ident in my .gitattributes. Plain console git checked out the source, applied ident on $Id$ macros, but then JGit ignored that and saw a difference that wasn't committed, where there actually wasn't one.

#The friendly people on the SonarQube mailing list helped me out, and suggested debugging with the standalone JGit command line distribution:

#This particular JGit bug has not been solved for over 5 years and I have no hope that it will be solved anytime soon, so I removed the $Id$ macros from all my sources.

#This is the (Bash) code I used, to remove all $Id$ macros:
find ./src -name "*.java" | xargs -n 1 sed -i '/$Id.*$/d'
find ./src -name "*.java" | xargs git add
git commit -m "Remove $Id$ macros"
git push