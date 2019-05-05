#!/bin/bash
set -eu

plugins=( mapchooser nominations rockthevote )

for plugin in "${plugins[@]}"; do
/cygdrive/c/scripting/spcomp \
  -i /cygdrive/c/scripting/include \
  -i /cygdrive/c/scripting \
  -i /cygdrive/c/scripting/include \
  -i addons/sourcemod/scripting \
  -i addons/sourcemod/scripting/include \
  -o "$plugin".smx \
  addons/sourcemod/scripting/"$plugin".sp \
  | grep -v "loose indentation"
done

