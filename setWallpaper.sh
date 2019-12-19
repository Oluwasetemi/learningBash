#!/bin/bash

# set the current Wallerpaper to the nasa picture of the day
# get the URL of the current Astronomy Picture of the Day (APOD)
apod_url=$(curl -s https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY | jq -r '.hdurl')

# get just the image name from the URL
filepath=$(basename "$apod_url")

# Now get the image and save it
curl -s -o "$filepath" "$apod_url"

# Use AppleScript to set it as the wallpaper
osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$PWD/$filepath\""

echo "done🚀"
