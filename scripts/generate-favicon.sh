#!/bin/sh

# Generate favicons using imagemagick

magick convert -resize x180 ./assets/images/logo.png ./static/apple-touch-icon.png
magick convert -resize x192 ./assets/images/logo.png ./static/android-chrome-192x192.png
magick convert -resize x512 ./assets/images/logo.png ./static/android-chrome-512x512.png

convert ./assets/images/logo.png \
          -define icon:auto-resize="256,128,96,64,48,32,16" \
          ./static/favicon.ico
