#!/bin/bash

DIR_TEMP=$(mktemp -d)

tar -xf ../data/archive-part1.tar -C $DIR_TEMP
unzip ../data/archive-part2.zip -d $DIR_TEMP

tar -czvf ../data/archive-combined.tar.gz -C $DIR_TEMP .

rm -rf $DIR_TEMP
