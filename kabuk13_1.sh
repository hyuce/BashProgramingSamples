#!/bin/bash
harf=(a b c d)
echo $harf

echo ---------------

echo ${harf[2]}

echo -------------
echo ${harf[*]}

echo ---while-----

degisken=0
while [ $degisken -le 3 ]
    do 
    sleep 1
    echo ${harf[$degisken]}
    degisken=$((degisken+1))
    done 
    
    
echo ---for-----

for degisken2 in ${harf[*]}

    do
    sleep 1
    echo $degisken2
    done
    
