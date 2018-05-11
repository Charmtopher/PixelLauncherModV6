#!/usr/bin/env bash
echo 'Generating changelog...'
./tools/changelog.sh > changelog.txt
echo 'Building normal variant...'
./tools/yq_linux_386 w -i apktool.yml versionInfo.versionName "Q-4753642 modded 6 build ${TRAVIS_BUILD_NUMBER}"
./build.sh
echo 'Cleaning up...'
rm -rf build
echo 'Building Pixel variant...'
sed -i -e '0,/com.google.android.apps.nexuslauncher/s//com.google.android.apps.moddednexuslauncher/' AndroidManifest.xml
sed -i -e 's/com.google.android.apps.nexuslauncher.permission./com.google.android.apps.moddednexuslauncher.permission./g' AndroidManifest.xml
sed -i -e 's/com.google.android.apps.nexuslauncher.settings/com.google.android.apps.moddednexuslauncher.settings/g' AndroidManifest.xml
sed -i -e 's/com.google.android.apps.nexuslauncher.appssearch/com.google.android.apps.moddednexuslauncher.appssearch/g' AndroidManifest.xml
sed -i -e 's/android:authorities="com.google.android.apps.nexuslauncher"/android:authorities="com.google.android.apps.moddednexuslauncher"/g' AndroidManifest.xml
sed -i -e 's/com.google.android.apps.nexuslauncher.appssearch/com.google.android.apps.moddednexuslauncher.appssearch/g' smali/com/google/android/apps/nexuslauncher/search/AppSearchProvider.smali
sed -i -e 's/com.google.android.apps.nexuslauncher.appssearch/com.google.android.apps.moddednexuslauncher.appssearch/g' smali/com/google/android/apps/nexuslauncher/search/e.smali
sed -i -e 's/com.google.android.apps.nexuslauncher/com.google.android.apps.moddednexuslauncher/g' smali/com/android/launcher3/config/FeatureFlags.smali
sed -i -e '0,/com.google.android.apps.nexuslauncher/s//com.google.android.apps.moddednexuslauncher/g' res/xml/launcher_preferences.xml
./tools/yq_linux_386 w -i apktool.yml apkFileName "PixelLauncherModV6-Pixel.apk"
./tools/yq_linux_386 w -i apktool.yml versionInfo.versionName "Q-4753642 modded 6 build ${TRAVIS_BUILD_NUMBER} for Pixel"
./build.sh
echo 'Signing APKs...'
./sign.sh
