### ⚠️ Do not use these flashable zip files on Android 7 (Nougat) and above

Android 7 has extra security measures that prevent writing to the /system partition. At best, these flashable zip files won't do anything. At worst, your phone may not boot at all or may become unusably slow.


### Installation

1. Decide which emoji you want to install
    - [Android 10 emoji](https://emojipedia.org/google/android-10.0/new/)
    - [Pie (Android 9) emoji](https://emojipedia.org/google/android-9.0/new/)
    - [Oreo (Android 8) emoji](https://emojipedia.org/google/android-8.0/new/)
    - [Nougat (Android 7) emoji](https://emojipedia.org/google/android-7.0/new/)

2. Download the appropriate flashable zip file and copy it to your device  
  https://github.com/bmaupin/android-update-emoji/releases

3. Boot to a custom recovery  
  This varies by device. If you need instructions see [XDA forums](https://forum.xda-developers.com/).

4. Flash the zip file and reboot your phone

5. If the new emoji aren't available on your keyboard, update your keyboard app to the latest version. Keyboard apps which should work:
    - [Google Keyboard](https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin)
    - [SwiftKey](https://play.google.com/store/apps/details?id=com.touchtype.swiftkey)
    - [Fleksy](https://play.google.com/store/apps/details?id=com.syntellia.fleksy.keyboard)


### Adding new emoji to this project

1. Find the branch for the version of Android (for example, `android10-release`):
    [https://android.googlesource.com/platform/external/noto-fonts/+refs](https://android.googlesource.com/platform/external/noto-fonts/+refs)

1. Browse to the release, the font should be in the `emoji` folder

1. Browse the the font file and copy the URL

1. Download the font and convert it from base64, for example:

    ```
    curl 'https://android.googlesource.com/platform/external/noto-fonts/+/android10-release/emoji/NotoColorEmoji.ttf?format=TEXT' | base64 -d > NotoColorEmoji.ttf
    ```
