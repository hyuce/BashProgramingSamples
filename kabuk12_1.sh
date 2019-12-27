#!/bin/bash

sayi=1
for dosya in *
    do
<<<<<<< HEAD
	echo $sayi". Dosya Adı: " $dosya
=======
	echo $sayi "Dosya Adi :"   $dosya
>>>>>>> c796acbb89fcb3a7c492559248dcb6ced1036a54
	sayi=$((sayi+1))
    done
