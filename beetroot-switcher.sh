#!/bin/sh

while true; do
	gsettings set org.mate.background picture-filename "/home/immolo/Pictures/1.jpg"
	sleep 60
	gsettings set org.mate.background picture-filename "/home/immolo/Pictures/2.jpg"
	sleep 60
	gsettings set org.mate.background picture-filename "/home/immolo/Pictures/3.jpg"
	sleep 60
done
