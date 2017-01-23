#!/bin/bash

clear

dizi_Degisken=()

for dosya in *
    do
    dizi_Degisken=("${dizi_Degisken[@]}" "$dosya")

    done


echo ${dizi_Degisken[5]}



