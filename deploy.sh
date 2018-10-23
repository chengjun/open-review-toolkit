#!/bin/bash


# Build the project with your terminal
# cd github/open-review-toolkit
#vagrant up
#vagrant ssh
#make book
#make site

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# delete public folder
# rm -rf website/build/*


# Go To Public folder
cd ..

cd ccrbook.github.io

# ssh-add ~/.ssh/id_rsa
# git remote set-url origin git@github.com:ccrbook/ccrbook.github.io.git

# rm -rf en
# rm -rf zh
# rm -rf note
# rm -rf post

# cp -av
cp -av /Users/datalab/github/open-review-toolkit/website/build/* .

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..

cd open-review-toolkit

# Once you're done working with the Vagrant VM, it's a good idea to shut it down with
# vagrant halt
