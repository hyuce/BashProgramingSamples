#!/bin/bash

bir=$1
iki=$3

toplama () {
echo $bir+$iki | bc
}
cikarma () {
echo $bir-$iki | bc
}

if [ $2 == +  ] ; then
toplama 
elif [ $2 == - ] ; then
cikarma 
else
echo "hatalı girdi"
fi








