#!/bin/bash

# Script that syncs local changes to Git

echo "copping bashrc..."
cp ~/.bashrc ./bashrc
echo "copping i3 config..."
cp ~/.i3/config ./i3config


if [ ! -f .git ]; then
    echo "creating a git repo"
    git init
    git remote add origin https://github.com/georgikoemdzhiev/configs.git
fi

echo "get latest..."
git pull
echo "add changes to HEAD"
git add *

echo "commit chages..."

read $commitMsg -p "Input commit message:"

# if the user pressed Enter, just use generic commti msg
if [ "$commitMsg" == "" ]; then
	git commit -m "Changes"
else
	git commit -m "$commitMsg"
fi

# save the git credentials in memory (below 'push' will prompt for those)
git config credential.helper store
# override the default (15 minutes) to 7 days
git config --global credential.helper 'cache --timeout 604800'

echo "pushing changes upstream..."
git push -u origin master
echo "done!"
