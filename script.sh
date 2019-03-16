#!/bin/sh

git diff --name-only --exit-code HEAD HEAD^1 dir1
if [ ! $? -eq 0 ]
then
    echo "Modified in dir1"
fi

git diff --name-only --exit-code HEAD HEAD^1 dir2
if [ ! $? -eq 0 ]
then
    echo "Modified in dir2"
fi