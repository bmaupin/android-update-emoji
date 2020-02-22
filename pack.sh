#!/bin/bash

# Clean up
rm -f install-*-emoji.zip

for folder in android-versions/*; do
    android_version=`basename $folder`
    sed -i "s/VERSION/${android_version^}/" META-INF/com/google/android/updater-script
    zip -r install-$android_version-emoji.zip META-INF
    sed -i "s/${android_version^}/VERSION/" META-INF/com/google/android/updater-script
    cd android-versions/$android_version
    zip -r ../../install-$android_version-emoji.zip system
    cd ../../
done
