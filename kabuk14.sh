#!/bin/bash

clear

dizi_Degisken=()

for dosya in *
    do
    dizi_Degisken=("${dizi_Degisken[@]}" "$dosya")

    done

echo ${dizi_Degisken[*]}

echo "Bir Deger Giriniz :"

read deger

echo "cevap : ${dizi_Degisken[$deger-1]}"

