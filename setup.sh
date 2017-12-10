#!/bin/sh

gitroot=`git rev-parse --show-toplevel`
echo "+ settings hooks"
if [ ! -d .git/hooks ]; then
  mkdir -p .git/hooks
fi
if [ ! -e .git/hooks/pre-commit ]; then
  ln -sf ${gitroot}/lib/githooks/pre-commit ${gitroot}/.git/hooks/pre-commit
fi
