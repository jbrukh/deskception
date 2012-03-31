#!/bin/bash
set -o errexit

TMP_DIR="/tmp/deskception"
NEW_DIR=$(date)
DESKTOP=~/Desktop

# if the desktop is empty, do nothing
if [ -z "$(ls $DESKTOP)" ]; then
    exit
fi

mkdir -p "$TMP_DIR" && \
mv $DESKTOP/* "$TMP_DIR"
mkdir -p $DESKTOP/"$NEW_DIR" && \
mv "$TMP_DIR"/* $DESKTOP/"$NEW_DIR" && \
rm -rf "$TMP_DIR"
