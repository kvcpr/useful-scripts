#!/bin/bash
# Author: Kacper Polak <kacper@hypequality.com>
# Git: https://github.com/kacepe/useful-scripts/blob/master/bash/scrapper/scrapper.sh

while [[ $# -gt 1 ]]
do
key="$1"
case $key in
    -u|--url)
    URL="$2"
    shift
    ;;
    -d|--debug)
    DEBUG=YES
    shift
    ;;
esac
shift
done
if [[ -z $URL ]] ; then
    echo "> URL of page to mirror:"
    read URL
fi
echo "> Mirroring: ${URL}"
echo "> Please wait"

if [[ -z $DEBUG ]] ; then
    wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -q $URL
else
    wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $URL
fi

echo "> Done"
