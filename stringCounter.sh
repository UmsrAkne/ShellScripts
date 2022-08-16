#!/bin/sh

# ./count.sh [fileName] [string]
# 指定したファイルの中から指定の文字列を検索して、行数を表示する。

cat $1 | nl -w 4 -n rz | grep $2 | nl -w 4 -n rz
