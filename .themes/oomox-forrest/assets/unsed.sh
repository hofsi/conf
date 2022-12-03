#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#2f2c3e/g' \
         -e 's/rgb(100%,100%,100%)/#ffffda/g' \
    -e 's/rgb(50%,0%,0%)/#2f2c3e/g' \
     -e 's/rgb(0%,50%,0%)/#ffffda/g' \
 -e 's/rgb(0%,50.196078%,0%)/#ffffda/g' \
     -e 's/rgb(50%,0%,50%)/#426d6c/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#426d6c/g' \
     -e 's/rgb(0%,0%,50%)/#ffffda/g' \
	"$@"
