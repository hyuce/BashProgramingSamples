#!/bin/bash

echo 'Birinci Sayı Giriniz:'
read a
echo 'İkinci Sayıyı Giriniz :'
read b
x=$(expr "$a" + "$b")
echo $a + $b = $x
