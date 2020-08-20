#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo "Version missing"
fi

VERSION=$1

echo "Creating archive with version $VERSION..."

tar \
  --exclude="*.sh" \
  --exclude=".idea" \
  --exclude=".gitignore" \
  --exclude=".git" \
  --exclude="*.md" \
  --exclude="*.tar.gz" \
  -czvf \
  "topsy-turvy-$VERSION.tar.gz" \
  .
