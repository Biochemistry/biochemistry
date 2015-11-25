#!/bin/sh

cd "$( dirname "$0" )/..";

branch="$( git rev-parse --abbrev-ref HEAD )";

git checkout master && git merge upstream/master;

git checkout develop && git merge upstream/develop;

git checkout $branch;

if [ $branch != "master" -a $branch != "develop" ]
then echo "You may now merge develop into your current branch."
fi
