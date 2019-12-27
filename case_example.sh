#!/bin/bash

echo "1 ve 3 arasındaki şanslı sayını seç dostum!"

read numara

case $numara in 
	1)
		echo "Ma boi ur a Kriptonian!"
	;;
	2)
		echo "Ma boi are u a Titan from Marvel Universe?!"
	;;
	3)
		echo "Oh boi ur a genius like Tony Stark and Reed Richards!"
	;;
	*)
		echo "Adamım 1 ve 3 arasındaki sayılar dedim!"
	;;
esac
