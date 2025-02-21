#!/bin/bash

echo "==========================="

git config --global user.name "${GITHUB_AUTHOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python /usr/bin/feed.py
git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "==========================="
