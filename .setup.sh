#!/bin/sh

sed -i "" -e "s/AQSFacebookActivity/$1/g" "Podfile"
sed -i "" -e "s/AQSFacebookActivity/$1/g" "AQSFacebookActivity.podspec"
sed -i "" -e "s/AQSFacebookActivity/$1/g" ".travis_test.sh"
sed -i "" -e "s/AQSFacebookActivity/$1/g" "appledoc.sh"
mv *.podspec $1.podspec
