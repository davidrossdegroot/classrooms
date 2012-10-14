#!/bin/sh
# Add all changed files to git local change repo
echo adding files to git
git add .

# Commit all
echo committing all changed files to local repo 
git commit  # Write a commit message for the file.
 # It might be a good idea to use a format like "filename: changes"

# Push to github and heroku
echo Pushing to heroku and github
git push heroku master
git push origin master
