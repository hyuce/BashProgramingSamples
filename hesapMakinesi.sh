#! /bin/bash
clear
sum=0
i="e"

while [ $i = "e" ]; do
	echo -n "Birinci sayıyı giriniz: " 
	read n1
	echo -n "İkinci sayıyı giriniz: "
	read n2
	echo "1.Toplama"
	echo "2.Çıkarma"
	echo "3.Çarpma"
	echo "4.Bölme"
	echo "Seçiminiz ->"
	read sec
	case $sec in
	1)
		sum=$(expr $n1 + $n2)
		echo "Toplama ="$sum
		;;
	2)
		sum=$(expr $n1 - $n2)
		echo "Çıkarma = "$sum
		;;
	3)
		sum=$(expr $n1 \* $n2)
		echo "Çarpma = "$sum
		;;
	4)
 		if [ $n2 -eq 0 ]; then
			echo "Bölen için 0'dan başka bir sayı giriniz."
   		else
     			sum=$(expr $n1 / $n2)
			echo "Bölme = "$sum
   		fi
		;;
	*) echo "Yanlış Seçim" ;;
	esac
	echo "Devam etmek istermisiniz (e/h)) ?"
	read i
	if [ $i != "e" ]; then
		exit
	fi
done
