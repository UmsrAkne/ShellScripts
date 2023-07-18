#!/bin/sh

mkdir -p histories

dt="date : $(date '+%Y/%m/%d %H:%M:%S')"
dtf="$(date '+%Y%m%d%H%M%S')"

{
echo "$dt"
echo "host : ""$(uname)"
echo "user : $(whoami)"
echo "location : $(pwd)"
echo ""
echo "file list **" 

echo ""
ls --ignore={infoOutput.sh,histories} -1 -lh
echo ""
echo "--------------------------------------------------"
echo ""
} > "histories/info_$dtf.txt"