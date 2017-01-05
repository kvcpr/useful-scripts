#!/bin/bash
# Author: Kacper Polak <kacper@hypequality.com>
# Git: https://github.com/kacepe/useful-scripts/blob/master/bash/scrapper/scrapper.sh

echo "*********************************************************"
echo "> URL of page to mirror:"
read url
echo "Mirroring... Please wait."
wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -q $url
echo "Done"
echo "*********************************************************"
