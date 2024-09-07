#!/bin/bash
# Copyright September 5, 2024 Myeong-han Kim.
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
cd $SCRIPT_DIR/../charts

printf '%s\n' \
    '---' \
    'layout: page' \
    'title: Charts' \
    'permalink: /charts/' \
    '---' \
    '### Table of Contents' \
    '{: .no_toc }' \
    '1. TOC' \
    '{:toc}' \
    '---' \
    '### Adding Repository' \
    '```shell' \
    'helm repo add fredric18 https://utils.fredric18.online/charts' \
    '```' \
    '---' \
    '### Chart List' > README.md

categories=($(cat index.yaml | yq ".entries[][].annotations.category" | sort | uniq))
#charts=($(cat index.yaml | yq '.entries | keys[]'))
for category in "${categories[@]}"; do
    if [ $category != 'null' ]; then
        charts=($(yq -r ".entries | to_entries[] | select(.value[].annotations.category == \"$category\") | .key" index.yaml))
        #charts=($(yq -r '.entries | to_entries[] | select(.value[].annotations.category == "'$category'") | .key' index.yaml))
        printf '%s\n' \
            "#### $category" >> README.md
        for chartname in "${charts[@]}"; do
            contents=$(cat index.yaml | yq ".entries[\"${chartname}\"][]")
            printf '%s\n' \
                "##### $chartname:$(yq ".entries[\"${chartname}\"][].version" index.yaml)" \
                '```yaml' \
                "$contents" \
                '```' >> README.md
        done
    #null은 마지막으로 정렬됨
    else
        printf '%s\n' \
            '#### Undefined' >> README.md
        charts=($(yq -r '.entries | to_entries[] | select(.value[].annotations | has("category") | not) | .key' index.yaml))
        for chartname in "${charts[@]}"; do
            contents=$(cat index.yaml | yq ".entries[\"${chartname}\"][]")
            printf '%s\n' \
                "##### $chartname:$(yq ".entries[\"${chartname}\"][].version" index.yaml)" \
                '```yaml' \
                "$contents" \
                '```' >> README.md
        done
    fi
done
