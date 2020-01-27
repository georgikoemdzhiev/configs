#!/bin/bash

# This script applies config files to host machine

echo "copy i3 config file..."
\cp -f i3config ~/.i3/config

echo "reload i3 to apply changes"
i3-msg reload

echo "copy bashrc..."
\cp -f bashrc ~/.bashrc

echo "Done"
