#!/usr/bin/bash

cat < test.csv | tail -n +2 | while read -r LINE
do
    column1=$(echo "$LINE" | cut -d , -f 1)
    column2=$(echo "$LINE" | cut -d , -f 2)
    column3=$(echo "$LINE" | cut -d , -f 3)
    column4=$(echo "$LINE" | cut -d , -f 4)
    column5=$(echo "$LINE" | cut -d , -f 5)

magick composite -gravity northwest -geometry "+$column4+$column5" -compose over "$column3" "$column2" "union_$column1"

done
