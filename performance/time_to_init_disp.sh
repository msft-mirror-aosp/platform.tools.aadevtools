#!/bin/bash

# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

readme() {
    echo '
This gets the time to initial display for an app for a few times.
e.g.
PKG_NAME="com.android.car.dialer" \
    ACT_NAME=".ui.TelecomActivity" \
    LOOPS=10 \
    ./time_to_init_disp.sh
'
    exit
}

if [[ -z $PKG_NAME ]]; then
    PKG_NAME="com.android.car.media"
fi

if [[ -z $ACT_NAME ]]; then
    ACT_NAME=".MediaActivity"
fi
ACTIVITY="$PKG_NAME/$ACT_NAME"

if [[ -z $LOOPS ]]; then
    LOOPS=10
fi
echo "Time $ACTIVITY to Initial Display for $LOOPS times."
START=1

SLEEP_SEC=3
adb root
adb logcat -c
for (( l=$START; l<=$LOOPS; l++ )); do
    echo "Force-stop $PKG_NAME"
    adb shell am force-stop "$PKG_NAME"
    sleep $SLEEP_SEC

    echo "Dropping caches"
    adb shell "echo 3 > /proc/sys/vm/drop_caches"

    echo "Loop: $l"
    adb shell am start -n "$ACTIVITY"
    sleep $SLEEP_SEC
done

echo
adb logcat -d | grep Displayed
