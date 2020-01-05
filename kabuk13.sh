#!/bin/bash

clear

dizi_Degisken=(Ocak Subat Mart Nisan Mayis Haziran Temmuz Agustos Eylul Ekim Kasim Aralik)

echo -n "Bir Ay Degeri Giriniz :"

read deger
if [ $deger -ge 13 ]
then
echo "YANLIŞ DEĞER!"

else
echo "cevap : ${dizi_Degisken[$deger-1]}"
fi
