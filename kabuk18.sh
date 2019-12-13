#!/bin/bash
echo -n "1. Sayıyı Giriniz : "
read bir
echo -n "2. Sayıyı Giriniz : "
read iki
echo "Topalama icin TOPLA Cikarma icin CIKAR yazınız"
read islem

toplama () {
echo $bir+$iki | bc
}

cikarma () {
echo $bir-$iki | bc
}

if [ $islem == TOPLA  ] ; then
toplama
elif [ $islem == CIKAR ] ; then
cikarma
else
echo "hatalı girdi"
fi








