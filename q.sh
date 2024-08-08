#!/bin/bash

# Check if a commit message was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 'commit message'"
    exit 1
fi

# Stage all changes
git add .

# Commit changes with the provided commit message
git commit -m "$1"

# Push changes to the remote repository
git push origin main

echo "Changes have been pushed to the repository."
