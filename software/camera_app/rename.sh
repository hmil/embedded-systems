#!/bin/sh

for x in "xx*"; do
  mv "$x" "$x.pcm"
done
