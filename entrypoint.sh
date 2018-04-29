#!/bin/sh
if [ -z "$REPO_PATH" ]; then
  echo "Missing \$REPO_PATH" 
  exit 1
fi
if [ -z "$REPO_REMOTE" ]; then
  echo "Missing \$REPO_REMOTE"
  exit 1
fi
if [ ! -d $REPO_PATH ]; then
  git clone $REPO_REMOTE $REPO_PATH
else
  cd $REPO_PATH
  git pull $REPO_REMOTE
  cd ..
fi

