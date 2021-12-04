#!/bin/bash -eu

if [ $# -eq 0 ]; then
	wh=64
else
	wh=$1
fi

mkdir -p png-$wh

for i in svg/*.svg; do
	i=$(basename $i)
	i=${i%.svg}
	echo png-$wh/$i.png
	rsvg-convert --width=$wh --height=$wh svg/$i.svg > png-$wh/$i.png
done
