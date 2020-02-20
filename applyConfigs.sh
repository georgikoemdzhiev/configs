#!/bin/bash

# This script applies config files to host machine

echo "copy i3 config file..."
\cp -f i3config ~/.i3/config

echo "reload i3 to apply changes"
i3-msg reload

echo "apply bashrc file..."
\cp -f bashrc ~/.bashrc
echo "apply Xresource file..."
\cp -f Xresources ~/.Xresources
echo "Done"
