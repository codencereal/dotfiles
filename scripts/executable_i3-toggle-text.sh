#!/bin/bash

if [ -z $1 ];
  then
    echo "Provide i3 config path"
    exit
  fi

CONFIG=$1
FONT="JetBrains Mono Nerd Font"
FONTSTR=`grep -R "font pango" $CONFIG`

if [[ $FONTSTR = font\ pango:*\ 0 ]];
  then
    sed -i "s/font pango:$FONT 0/font pango:$FONT 9/" $CONFIG
  else
    sed -i "s/font pango:$FONT 9/font pango:$FONT 0/" $CONFIG
  fi
