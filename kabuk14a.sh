#!/bin/bash

clear

dizi_Dosya=()

for dosya in `cut -d',' -f4 ornekveri.csv`
    do
    dizi_Dosya=("${dizi_Dosya[@]}" "$dosya")

    done

echo ${dizi_Dosya[*]}

sayi=`cut -d',' -f4 ornekveri.csv| wc -l`
for yas in {0..3}
do 
echo "$yas . veri degeri : ${dizi_Dosya[$yas]} "
ortalama = ortalama + ${dizi_Dosya[$yas]}

done

echo ortalama / 4 | bc

#echo "cevap : ${dizi_Dosya[$deger-1]}"

