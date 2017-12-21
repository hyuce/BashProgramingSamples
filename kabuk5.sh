#!/bin/bash


echo "0 ile 20 arasında bir sayı giriniz ..."

read sayi

if  [ $sayi -lt 20  -a  $sayi -gt 0 ]

    then
       echo "Seçtiğiniz sayı : $sayi "
    else
       echo "Yazdığınız $sayi sayısı uygun aralıkta değil."
fi
