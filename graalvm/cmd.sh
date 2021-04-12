#!/bin/bash

BRANCH_OPT = ""
if [ -z "$BRANCH" ]
then
  echo $BRANCH_OPT
else
  $BRANCH_OPT = "--single-branch --branch $BRANCH"
fi

git clone $BRANCH_OPT $GIT_REPO_URL
cd $PROJECT_DIR
/bin/sh ./build.sh
