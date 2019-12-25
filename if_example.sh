#!/bin/bash

echo "Guess my height boi!"

read height

if [ $height -gt 160 -a $height -lt 170 ]

then
		echo "Boi ur closer try again!"

elif [ $height -eq 175 ]

then 
		echo "Oh my dear boi u won!"

else
		echo "Oh boi wtf?!"
fi
