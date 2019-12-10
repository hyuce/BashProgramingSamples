#!/usr/bin/env bash

for F in *
do
	if [[ -f $F ]]
	then
		echo $F: $(cat $F | wc -l)
	fi
done
