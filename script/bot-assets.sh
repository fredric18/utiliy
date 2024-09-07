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

L1dirs=($(find . -type d -maxdepth 1 | tail -n$(expr $(find . -type d -maxdepth 1 | wc -l | sed 's/ //g') - 1) | sed 's/.\///g'))
tree -L 1 --noreport | tail -n$(expr $(tree -L 1 --noreport | wc -l) - 1) | sed 's/[^a-zA-Z0-9._-]//g'
printf '%s\n' \
    '---' \
    'layout: page' \
    'title: Assets' \
    'permalink: /assets/' \
    '---' \
    '### Pages of Assets' > README.md

for L1dir in "${L1dirs[@]}"; do
    if [ $L1dir != 'css' ]; then 
        printf '%s\n' \
            "1. [$L1dir](/assets/$L1dir)" >> README.md
        cd $L1dir
        printf '%s\n' \
            '---' \
            'layout: page' \
            "title: Assets/$L1dir" \
            "permalink: /assets/$L1dir" \
            '---' \
            "### Pages of $L1dir" > README.md
        L2dirs=($(find . -type d -maxdepth 1 | tail -n$(expr $(find . -type d -maxdepth 1 | wc -l | sed 's/ //g') - 1) | sed 's/.\///g'))
        for L2dir in "${L2dirs[@]}"; do
            printf '%s\n' \
                "#### $L2dir" >> README.md
            files=($(find $L2dir -type f))
            for file in "${files[@]}"; do
                printf '%s\n' \
                    "1. [$file](/assets/$L1dir/$file)" >> README.md
            done
        done
        cd $SCRIPT_DIR/../assets
    fi
done
