#!/bin/bash

battery=$(cat /sys/class/power_supply/BAT0/status)
capacity=$(cat /sys/class/power_supply/BAT0/capacity)

case $battery in
	"Full") status="⚡" ;;
	"Discharging")
		if [ "$capacity" -gt "75" ]; then
			status="🔋"
		elif [ "$capacity" -gt "50" ]; then
			status=" "
		elif [ "$capacity" -gt "25" ]; then
			status=" "
		elif [ "$capacity" -gt "10" ]; then
			status=" "
		else
			status=" "
		fi ;;
	"Charging")
		if [ "$capacity" -gt "75" ]; then
			status="🔌🔋"
		elif [ "$capacity" -gt "50" ]; then
			status="🔌 "
		elif [ "$capacity" -gt "25" ]; then
			status="🔌 "
		elif [ "$capacity" -gt "10" ]; then
			status="🔌 "
		else
			status="🔌 "
		fi ;;
	"Not charging") status=" " ;;
	"Unknown") status="" ;;
	*) exit 1 ;;
esac

echo "$status" " " "$capacity"%
