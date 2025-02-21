#!/bin/bash

echo "==========================="

git config --global user.name "systemslibrarian}"
git config --global user.email "systemslibrarian@gmail.com"
git config --global --add safe.directory /github/workspace

python /usr/bin/feed.py
git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "==========================="
