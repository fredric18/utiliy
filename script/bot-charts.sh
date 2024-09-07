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

function writeCharts() {
    local charts=("$@")
    for chartname in "${charts[@]}"; do
        ##### ChartName
        local chartVersion=$(yq ".entries[\"${chartname}\"][].version" index.yaml)
        local chartfullname=$chartname-$chartVersion
        printf '>%s\n' \
            '   ' \
            "##### [$chartfullname](/charts/details/$chartfullname)" \
        >> README.md

        ###### Description
        printf '>>%s\n' \
            '###### description' \
            '{: .no_toc}' \
        >> README.md
        printf '>>>%s\n' \
            "$(yq ".entries[\"${chartname}\"][].description" index.yaml)" \
        >> README.md


        ##### ChartName > ### details 생성
        mkdir -p "details/$chartfullname"
        contents=$(cat index.yaml | yq ".entries[\"${chartname}\"][]")
        printf '%s\n' \
            '---' \
            'layout: page' \
            "title: charts/details/$chartfullname" \
            "permalink: /charts/details/$chartfullname/" \
            '---' \
            '<p align="center">' \
            "    <img src=\"$(yq ".entries[\"${chartname}\"][].icon" index.yaml)\" width=\"300px\" height=\"300px\">" \
            '</p>' \
            '### Using Chart' \
            '```shell' \
            '# install' \
            "helm install -n [ namespace ] $chartname fredric18/$chartname" \
            '# uninstall' \
            "helm uninstall -n [ namespace ] $chartname" \
            '# untar' \
            "helm pull fredric18/$chartname --untar --version=$chartVersion" \
            '```' \
            '---' \
            '### Chart Information' \
        > details/$chartfullname/README.md
        ##### #### Description
        printf '%s\n' \
            '#### description' \
        >> details/$chartfullname/README.md
        printf '>%s\n' \
            "$(yq ".entries[\"${chartname}\"][].description" index.yaml)" \
        >> details/$chartfullname/README.md

        ##### #### Images
        images=($(yq ".entries[\"${chartname}\"][].annotations.images" index.yaml | yq ".[].image"))
        array_length=${#images[@]}
        for (( i=0; i<array_length; i++ )); do
            if [ $i == 0 ]; then
                printf '%s\n' \
                    '   ' \
                    '#### images' \
                    '```shell' \
                >> details/$chartfullname/README.md
            fi
            image=${images[$i]}
            printf '%s\n' \
                "docker pull $image" \
            >> details/$chartfullname/README.md
            if [ $i == $(expr $array_length - 1) ]; then
                printf '%s\n' \
                    '```' \
                >> details/$chartfullname/README.md
            fi
        done

        ##### #### Dependencies
        array_length=$(yq ".entries[\"${chartname}\"][].dependencies | length" index.yaml)
        for (( i=0; i<array_length; i++ )); do
            if [ $i == 0 ]; then
                printf '%s\n' \
                    '   ' \
                    '#### dependencies' \
                >> details/$chartfullname/README.md
                printf '>%s\n' \
                    'Name | Version | Repository' \
                    '---|---|---' \
                >> details/$chartfullname/README.md
            fi
            printf '>%s\n' \
                "$(yq ".entries[\"${chartname}\"][].dependencies[$i].name" index.yaml) | $(yq ".entries[\"${chartname}\"][].dependencies[$i].version" index.yaml) | $(yq ".entries[\"${chartname}\"][].dependencies[$i].repository" index.yaml)" \
            >> details/$chartfullname/README.md
        done
        printf '%s\n' \
            '   ' \
            '#### Chart.yaml' \
            '```yaml' \
            "$contents" \
            '```' \
        >> details/$chartfullname/README.md
    done
}

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
    '### Chart List' \
> README.md

categories=($(cat index.yaml | yq ".entries[][].annotations.category" | sort | uniq))
#charts=($(cat index.yaml | yq '.entries | keys[]'))
for category in "${categories[@]}"; do
    if [ $category != 'null' ]; then
        printf '%s\n' \
            '   ' \
            "#### $category" \
        >> README.md
        charts=($(yq -r ".entries | to_entries[] | select(.value[].annotations.category == \"$category\") | .key" index.yaml))
        #charts=($(yq -r '.entries | to_entries[] | select(.value[].annotations.category == "'$category'") | .key' index.yaml))
    #null은 마지막으로 정렬됨
    else
        printf '%s\n' \
            '   ' \
            '#### Undefined Category' \
        >> README.md
        charts=($(yq -r '.entries | to_entries[] | select(.value[].annotations | has("category") | not) | .key' index.yaml))
    fi
    writeCharts "${charts[@]}"
done
