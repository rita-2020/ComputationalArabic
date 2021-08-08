#!/bin/sh

# If a comamand fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to Github...\033[0m\n"

# Build the project.
hugo -D 

# Go To Public folder
cd public

git status 

# Add changes to git.
git add .
git status
# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then 
        msg="$*"
fi
git commit -a -m "msg"

git status

# Push source and build repos.
git push 
