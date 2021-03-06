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

#%H
#commit hash
#%h
#abbreviated commit hash
#%T
#tree hash
#%t
#abbreviated tree hash
#%P
#parent hashes
#%p
#abbreviated parent hashes
#%an
#author name
#%aN
#author name (respecting .mailmap, see git-shortlog(1) or git-blame(1))

#%ae
#author email
#
#%aE
#$author email (respecting .mailmap, see git-shortlog(1) or git-blame(1))
#
#%al
#author email local-part (the part before the @ sign)
#
#%aL
#author local-part (see %al) respecting .mailmap, see git-shortlog(1) or git-blame(1))

#%ad
#author date (format respects --date= option)

#%aD
#author date, RFC2822 style

#%ar
#author date, relative

#%at
#author date, UNIX timestamp

#%ai
#author date, ISO 8601-like format

#%aI
#author date, strict ISO 8601 format

#%as
#author date, short format (YYYY-MM-DD)

#%cn
#committer name

#%cN
#committer name (respecting .mailmap, see git-shortlog(1) or git-blame(1))
#
#%ce
#committer email
#
#%cE
#committer email (respecting .mailmap, see git-shortlog(1) or git-blame(1))
#
#%cl
#author email local-part (the part before the @ sign)
#
#%cL
#author local-part (see %cl) respecting .mailmap, see git-shortlog(1) or git-blame(1))
#
#%cd
#committer date (format respects --date= option)
#
#%cD
#committer date, RFC2822 style
#
#%cr
#committer date, relative
#
#%ct
#committer date, UNIX timestamp
#
#%ci
#committer date, ISO 8601-like format
#
#%cI
#committer date, strict ISO 8601 format
#
#%cs
#committer date, short format (YYYY-MM-DD)
#
#%d
#ref names, like the --decorate option of git-log(1)
#
#%D
#ref names without the " (", ")" wrapping.
#
#%S
#ref name given on the command line by which the commit was reached (like git log --source), only works with git log
#
#%e
#encoding
#
#%s
#subject
#
#%f
#sanitized subject line, suitable for a filename
#
#%b
#body
#
#%B
#raw body (unwrapped subject and body)
#
#%N
#commit notes
#
#%GG
#raw verification message from GPG for a signed commit
#
#%G?
#show "G" for a good (valid) signature, "B" for a bad signature, "U" for a good signature with unknown validity, "X" for a good signature that has expired, "Y" for a good signature made by an expired key, "R" for a good signature made by a revoked key, "E" if the signature cannot be checked (e.g. missing key) and "N" for no signature
#
#%GS
#show the name of the signer for a signed commit
#
#%GK
#show the key used to sign a signed commit
#
#%GF
#show the fingerprint of the key used to sign a signed commit
#
#%GP
#show the fingerprint of the primary key whose subkey was used to sign a signed commit
#
#%gD
#reflog selector, e.g., refs/stash@{1} or refs/stash@{2 minutes ago}; the format follows the rules described for the -g option. The portion before the @ is the refname as given on the command line (so git log -g refs/heads/master would yield refs/heads/master@{0}).
#
#%gd
#shortened reflog selector; same as %gD, but the refname portion is shortened for human readability (so refs/heads/master becomes just master).
#
#%gn
#reflog identity name
#
#%gN
#reflog identity name (respecting .mailmap, see git-shortlog(1) or git-blame(1))
#
#%ge
#reflog identity email
#
#%gE
#reflog identity email (respecting .mailmap, see git-shortlog(1) or git-blame(1))
#
#%gs
#reflog subject