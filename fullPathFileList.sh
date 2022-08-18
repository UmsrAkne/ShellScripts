#!/bin/bash

ls -1 | xargs -I{} readlink -f {} | sed -e "s:/:\\\\:g" | sed -e "s/^.//"
