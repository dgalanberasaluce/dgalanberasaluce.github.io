#!/bin/bash

echo "Cleaning up previous setup..."
rm -rf ./_site

echo "Building Jekyll (Main)..."
bundle exec jekyll build

echo "Site built"
echo "Initiating server at http://localhost:8080"

cd ./_site
python3 -m http.server 8000