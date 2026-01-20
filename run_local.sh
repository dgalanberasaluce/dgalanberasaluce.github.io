#!/bin/bash

echo "Cleaning up previous setup..."
rm -rf home/_site

echo "Building Jekyll (Main)..."
cd home
bundle exec jekyll build
cd ..

echo "Building MkDocs (HomeLab)..."
cd homelab-docs
mkdocs build --site-dir ../home/_site/homelab
cd ..

echo "Site built"
echo "Initiating server at http://localhost:8080"

cd home/_site
python3 -m http.server 8080