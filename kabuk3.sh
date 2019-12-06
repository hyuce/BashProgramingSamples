#!/bin/bash

#typeset -i sonuc

a=12.65
b=13.09

sonuc=$a*$b
#echo $sonuc

echo "scale=4; $sonuc/3.14" | bc


