#!/bin/bash
# Copyright September 6, 2024 Myeong-han Kim.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $SCRIPT_DIR/../assets

pages=($(find . -type d -maxdepth 1 | tail -n$(expr $(find . -type d -maxdepth 1 | wc -l | sed 's/ //g') - 1) | sed 's/.\///g'))
printf '%s\n' \
    '---' \
    'layout: page' \
    'title: Assets' \
    'permalink: /assets/' \
    '---' \
    '### Pages' > README.md

for page in "${pages[@]}"; do
    if [ $page != 'css' ]; then 
        printf '%s\n' \
            "1. [$page](/assets/$page)" >> README.md
    fi
done
