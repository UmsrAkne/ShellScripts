#!/bin/sh

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
ls --ignore={info*.txt,infoOutput.sh} -1 -lh
echo ""
echo "--------------------------------------------------"
echo ""
} > "info_$dtf.txt"