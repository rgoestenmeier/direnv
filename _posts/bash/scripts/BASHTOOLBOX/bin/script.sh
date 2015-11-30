#!/bin/bash

HERE="$PWD/${0%/*}"
HERE="$(cd "$HERE"; pwd)"

SELF=${0##*/}

echo HERE=$HERE
echo SELF=$SELF
