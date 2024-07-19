#!/bin/sh

# Updates icons by downloading them from a github repository and renaming them.

# NOTE: DO NOT RUN: only use this as a reference...

git clone https://github.com/Remix-Design/RemixIcon --depth=1
cd ./RemixIcon
cd ./icons
perl-rename -f 'y/A-Z/a-z/' *
find . -name '*-fill.svg' -delete
find . -name "*-line.svg" -exec perl-rename 's/\-line\.svg/\.svg/g' {} \;
# svgo -r --enable=removeXMLNS --disable=convertPathData -f .
for i in $(find -type d); do mv $i/*.svg && rm $i ./; done
cd ..
mv ./RemixIcon ./ -fT
