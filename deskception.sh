#!/bin/bash

TMP_DIR="/tmp/deskception"
NEW_DIR=$(date)

mkdir -p "$TMP_DIR" && \
mv ~/Desktop/* "$TMP_DIR"
mkdir -p ~/Desktop/"$NEW_DIR" && \
mv "$TMP_DIR"/* ~/Desktop/"$NEW_DIR" && \
rm -rf "$TMP_DIR"
