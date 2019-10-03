#!/bin/bash
read -p "Büyük karekterli bir yazı giriniz : " i
o=$(echo "$i" | tr '[:upper:]' '[:lower:]')
echo $o