#!/bin/bash

clear

dizi_Degisken=(Ocak Subat Mart Nisan Mayis Haziran Temmuz Agustos Eylul Ekim Kasim Aralik)

echo -n "Bir Ay Degeri Giriniz :"

read deger

echo "cevap : ${dizi_Degisken[$deger-1]}"

