#!/bin/sh

sed -i "" -e "s/AQSFacebookActivity/$1/g" "Podfile"
sed -i "" -e "s/AQSFacebookActivity/$1/g" "AQSFacebookActivity.podspec"
sed -i "" -e "s/AQSFacebookActivity/$1/g" "Makefile"
mv *.podspec $1.podspec
