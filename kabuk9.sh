#!/bin/bash

deger=100


while [ $deger -gt 0 ]
    do
	echo $deger
	sleep 0.1
	deger=$((deger-2))
    done

echo "bitti"
