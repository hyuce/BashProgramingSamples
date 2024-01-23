#!/bin/bash

#typeset -i sonuc
echo "çarpılacak ilk değeri giriniz"
read a 
echo "çarpılacak ikinci değeri giriniz"
read b 
sonuc=$a*$b
#echo $sonuc

echo "scale=4; $sonuc" | bc


