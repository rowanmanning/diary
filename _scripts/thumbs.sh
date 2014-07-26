#!/bin/bash

force=false

if [ "$1" == "-f" ]; then
  force=true
fi

for full in image/entry/*.jpg; do
  thumb=${full/image\/entry\//image\/entry\/thumb/}
  if [[ ! -f $thumb || $force == true ]]; then
    echo "Converting $full to $thumb"
    convert -resize 50% -quality 88 $full $thumb
  fi
done

echo "Done!"
