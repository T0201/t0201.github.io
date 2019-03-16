#!/bin/bash
bzip2 -fkz Packages
gzip -fk Packages
git add .
git commit -m "$*"
echo "Packaged! A git commit was made with the message:"
echo
echo "$@"
echo