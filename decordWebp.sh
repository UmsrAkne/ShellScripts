#!/bin/sh

mkdir pngs
ls *.webp | xargs -I{} ./dwebp.exe {} -o pngs/{}.png