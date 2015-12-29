#!/bin/sh -e
rm -f xx*

nios2-download -g -r camera_app.elf
if [ ! -z "$1" ]; then
  nios2-terminal | sed -e '/nios2-terminal.*\|^$/d' | tee "$1" | csplit - '/# == NEW FRAME/+1' '{*}' &
  sleep 1
  tail -f "$1"


else
  nios2-terminal
fi
