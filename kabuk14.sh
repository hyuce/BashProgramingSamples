#!/bin/bash

clear

dizi_Degisken=()
dosya_sayisi=`ls | wc -l`

for dosya in *
    do
    dizi_Degisken=("${dizi_Degisken[@]}" "$dosya")

    done
while [ $dosya_sayisi -gt 0 ]
    do
    echo ${dizi_Degisken[dosya_sayisi]}
    dosya_sayisi=$((dosya_sayisi-1))
    done

echo ${dizi_Degisken[*]}

echo "Bir Deger Giriniz :"

read deger

echo "cevap : ${dizi_Degisken[$deger-1]}"

