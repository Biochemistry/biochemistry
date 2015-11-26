#!/bin/sh

cd "$( dirname "$0" )/.."

node tasks/watch.js $*
