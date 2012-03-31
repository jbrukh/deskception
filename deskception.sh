#!/bin/bash
DESKTOP=~/Desktop
DATE=$(date) #(date "+%Y-%m-%d")
NEW_DIR=$DESKTOP/$DATE

# if the desktop is empty, do nothing
if [ -z "$(ls $DESKTOP)" ]
then
    echo "Nothing to pack (skipping)"
    exit 1
fi

mkdir -p "$NEW_DIR"
if [ $? -ne 0 ]
then
    echo "Could not create new directory: $NEW_DIR"
    exit 1
fi

find $DESKTOP -depth 1 -prune \
              -not -name ".*" \
              -not -name "$DATE" \
              -exec mv {} "$NEW_DIR" \;
