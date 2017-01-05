#!/bin/bash
echo "*********************************************************"
echo "> URL of page to mirror:"
read url
echo "Mirroring... Please wait."
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -q $url
echo "Done"
echo "*********************************************************"
