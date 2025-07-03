#!/bin/bash
CWD=$(pwd)

mkdir -p $CWD/.git/hooks

cp $CWD/scripts/pre_commit_hook.sh $CWD/.git/hooks/pre-commit
cp $CWD/scripts/pre_push_hook.sh $CWD/.git/hooks/pre-push

chmod +x $CWD/.git/hooks/pre-commit
chmod +x $CWD/.git/hooks/pre-push