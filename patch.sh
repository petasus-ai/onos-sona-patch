#!/bin/bash

git config --global user.email "sona@onosproject.org"
git config --global user.name "SONA Project"

for entry in *.patch
do
  echo "Patching ONOS with the patch $entry..."
  git am -3 < $entry
done

echo "Done all patches!"

