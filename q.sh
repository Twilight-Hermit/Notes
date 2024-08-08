#!/bin/bash

# Default commit message
DEFAULT_MESSAGE="None"

# Check if a commit message was provided as an argument
if [ -z "$1" ]; then
    COMMIT_MESSAGE="$DEFAULT_MESSAGE"
else
    COMMIT_MESSAGE="$1"
fi

# Default branch to push
BRANCH="main"

# Check if a branch name is provided as the second argument
if [ ! -z "$2" ]; then
    BRANCH=$2
fi

# Stage all changes
git add .

# Commit changes with the provided or default commit message
git commit -m "$COMMIT_MESSAGE"

# Pull changes from the remote branch before pushing
git pull origin $BRANCH

# Push changes to the remote repository
git push origin $BRANCH

echo "Changes have been pushed to the $BRANCH branch of the repository with commit message: '$COMMIT_MESSAGE'."
