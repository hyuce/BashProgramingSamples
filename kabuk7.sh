#!/bin/bash

clear

echo "_____________________________________"
echo "| 1. Ekranı Temizle                 |"
echo "| 2. Sistemde kimler var görüntüle  |"
echo "| 3. Bu dizindeki dosyaları göster  |"
echo "| 4. Saat Kaç?                      |"
echo "-------------------------------------"


echo -n "Seçeneğinizi Giriniz : "
read secenek

case $secenek in
    1)
	clear
	;;
    2) 
	who 
	;;
    3)
	ls -la
	;;
    4)
	date +%H:%M
	;;
    *)
	echo "Yanlış seçenek seçtiniz"
esac

