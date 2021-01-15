# [Android Automotive](https://source.android.com/devices/automotive) Developer Tools

AADevT contains tools for AA device developers to improve their productivity.

* Fully unbundle from Android versions, and use the AOSP trunk based development model.

* Bridge the app ecosystem for [Android Automotive OS](https://developer.android.com/training/cars)
because device developers are the key producers for the core apps.

* Leverage [Android app developer tools](https://developer.android.com/studio/intro) that a few
million developers use.

[TOC]

## Dev
This contains tools designed specifically to simplify the AA device development workflows.

* clone_proj.sh to clone a git project for the unbundled development workflows in instead of the
whole Android repo.

* sysui_oem_diff.sh to generate a summary of code changes between 2 revisions. The output will be
useful to discuss the pain points w.r.t. sysui/notif customization.

## System Performance Tuning
AAOS system performance turning is hard. Here are the tools to make it a bit easier for the device
developers.

* time_to_init_disp.sh to measure an app's [Time the Initial Display](https://developer.android.com/topic/performance/vitals/launch-time#time-initial)
