#!/bin/bash

# Copyright (C) 2021 The Android Open Source Project
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
# limitations under the License.

# install an apk via adb, e.g.
# ./install_app.sh apk_path
declare -A aDic

apk=$1
if [[ -f ${apk} ]]; then
  echo "Installing ${apk}"
  cmd="adb install -r ${apk}"
  eval "${cmd}"
else
  echo "Error: Can not find ${apk}"
fi
