#!/bin/sh
./_genindex.pl>index.md
git add .
git-acommit --auto
git push
reposman push


