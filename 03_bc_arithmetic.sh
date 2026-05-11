#!/bin/bash

#typeset -i sonuc
echo "çarpılacak ilk değeri giriniz"
read a 
echo "çarpılacak ikinci değeri giriniz"
read b 
# sonuc=$a*$b
# echo "scale=4; $sonuc" | bc
echo "scale=4; $a * $b" | bc


