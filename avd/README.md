# Developer Tools for [AVD as a Development Platform](https://source.android.com/devices/automotive/start/avd)
This is a collection of developer tools to use AAOS AVDs for a better produtivity.

## Use Android Studio & Emulator
These scripts provide simple steps to add AVD images. So users can use them by the AVD manager GUI or [the command line](https://developer.android.com/studio/run/emulator-commandline).

### Add new AVD images
* add_avd_img.sh adds an AVD image to Android SDK dir.
    * test_avd_avd_image.sh is an test & also an example how to use it.
* batch_add_avd_img.sh adds all AVD images listed in the input CSV file & properly patch to be used for Automotive device profiles.
    * avd_img_list.csv is the default CSV file if non is provided & also as an example.
