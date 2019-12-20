#!/bin/bash

for tckn in `cut -d';' -f3 ornekveri.csv`
    do
	echo  "Kişinin TCKN Numarası: $tckn"
done
