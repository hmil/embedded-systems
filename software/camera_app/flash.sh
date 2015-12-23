#!/bin/sh -e
nios2-download -g -r camera_app.elf
if [ ! -z "$1" ]; then
  nios2-terminal | sed -e '/nios2-terminal.*\|^$/d' | tee "$1"
else
  nios2-terminal
fi
