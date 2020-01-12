#! /bin/bash 

echo    "2x2 LİK MATRİSİN  DETERMİNANTINI HESAPLAMA MAKİNESİ "

read -p " a11 elemanını giriniz " a11
read -p " a12 elemanını giriniz " a12
read -p " a21 elemanını giriniz " a21
read -p " a22 elemanını giriniz " a22


echo "

MATRİS                                        DETERMİNANT

----               ----
|                     |                     |                  |
    $a11        $a12                                   $a11      $a12       
|                     |                     |                  | 
    $a21        $a22                                   $a21      $a22 
|                     |                     |                  |
----               ----                  

"

echo "detA=  $(( $a11 * $a22 - $a12 * $a21 )) "
