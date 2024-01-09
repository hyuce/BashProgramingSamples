#!/bin/bash

clear

dizi_Degisken=()
dosya_sayisi=`ls | wc -l`

for dosya in *
    do
    dizi_Degisken=("${dizi_Degisken[@]}" "$dosya")

    done
typeset -i yazilan_dosya_sayisi=0
while [ $dosya_sayisi -gt $yazilan_dosya_sayisi ]
    do
    echo ${dizi_Degisken[yazilan_dosya_sayisi]}
    yazilan_dosya_sayisi=$((yazilan_dosya_sayisi+1))
    done

echo ${dizi_Degisken[*]}

echo "Bir Deger Giriniz :"

read deger

echo "cevap : ${dizi_Degisken[$deger-1]}"
