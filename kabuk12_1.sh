#!/bin/bash

sayi=1
for dosya in *
    do
	echo $sayi". Dosya Adı: " $dosya
	sayi=$((sayi+1))
    done
