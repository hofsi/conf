#!/bin/sh
sed -i \
         -e 's/#2f2c3e/rgb(0%,0%,0%)/g' \
         -e 's/#ffffda/rgb(100%,100%,100%)/g' \
    -e 's/#2f2c3e/rgb(50%,0%,0%)/g' \
     -e 's/#ffffda/rgb(0%,50%,0%)/g' \
     -e 's/#426d6c/rgb(50%,0%,50%)/g' \
     -e 's/#ffffda/rgb(0%,0%,50%)/g' \
	"$@"
