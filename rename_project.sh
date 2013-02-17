#!/bin/bash

# renames the application
# -> just replace NEW_NAME and NEW_UNIQU_NAME with with valid names of you choice and you are set :)
#
# NOTE: value NEW_UNIQUE_NAME should be unique as not to clash with other
# unique Android application names

NEW_NAME="BarApp"
NEW_UNIQUE_NAME="foo.foomatic.${NEW_NAME}"

mv PySideExample.pro "${NEW_NAME}.pro"
sed -i "s/PySideExample/${NEW_NAME}/g" "${NEW_NAME}.pro"
sed -i "s/org.modrana.PySideExample/${NEW_UNIQUE_NAME}/g" main.h
sed -i "s/org.modrana.PySideExample/${NEW_UNIQUE_NAME}/g" android/src/org/kde/necessitas/origo/QtActivity.java
sed -i "s/org.modrana.PySideExample/${NEW_UNIQUE_NAME}/g" android/AndroidManifest.xml
sed -i "s/PySideExample/${NEW_NAME}/g" android/AndroidManifest.xml
sed -i "s/PySideExample/${NEW_NAME}/g" android/res/values/strings.xml
sed -i "s/PySideExample/${NEW_NAME}/g" android/build.xml
