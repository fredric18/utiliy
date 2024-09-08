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

function generatePage() {
	printf '%s\n' \
		'---' \
		"layout: $1" \
		"title: $2" \
		"permalink: $3" \
		'---' \
	> $4
}


function loopChartVersions() {
    local chartname="$1"
    local chartVersions=("${!2}")
	local chartVersion_length=${#chartVersions[@]}
	for (( cvc=0; cvc<chartVersion_length; cvc++ )); do
		local chartVersion=${chartVersions[$cvc]}
		local chartfullname=$chartname-$chartVersion

		## Title with Link
		printf '>%s\n' \
			'   ' \
			"##### [$chartfullname](/charts/details/$chartfullname)" \
		>> README.md

		## Description 생성
		if [ $cvc == "$(expr $chartVersion_length - 1)" ]; then
			 printf '>>%s\n' \
				'###### description' \
				'{: .no_toc}' \
			>> README.md
			printf '>>>%s\n' \
				"$(yq ".entries[\"${chartname}\"][].description" index.yaml)" \
			>> README.md
		fi

		## details page 생성
		generateDetailsPage $chartname $chartfullname
	done
}

function generateDetailsPage() {
    local chartname="$1"
	local chartfullname="$2"

	mkdir -p "details/$chartfullname"

	## Title
	generatePage "page" "$chartfullname" "/$chartfullname/" "details/$chartfullname/README.md"

	## Using Chart
	printf '%s\n' \
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
	>> "details/$chartfullname/README.md"

	## Description
	printf '%s\n' \
		'#### description' \
	>> details/$chartfullname/README.md
	printf '>%s\n' \
		"$(yq ".entries[\"${chartname}\"][].description" index.yaml)" \
	>> details/$chartfullname/README.md

	## Images
	images=($(yq ".entries[\"${chartname}\"][].annotations.images" index.yaml | yq ".[].image"))
	array_length=${#images[@]}
	for (( k=0; k<array_length; k++ )); do
		if [ $k == 0 ]; then
			printf '%s\n' \
				'   ' \
				'#### images' \
				'```shell' \
			>> details/$chartfullname/README.md
		fi
		image=${images[$k]}
		printf '%s\n' \
			"docker pull $kmage" \
		>> details/$chartfullname/README.md
		if [ $k == $(expr $array_length - 1) ]; then
			printf '%s\n' \
				'```' \
			>> details/$chartfullname/README.md
		fi
	done

	## Dependencies
	array_length=$(yq ".entries[\"${chartname}\"][].dependencies | length" index.yaml)
	for (( k=0; k<array_length; k++ )); do
		if [ $k == 0 ]; then
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
			"$(yq ".entries[\"${chartname}\"][].dependencies[$k].name" index.yaml) | $(yq ".entries[\"${chartname}\"][].dependencies[$k].version" index.yaml) | $(yq ".entries[\"${chartname}\"][].dependencies[$k].repository" index.yaml)" \
		>> details/$chartfullname/README.md
	done

	## Chart.yaml
	contents=$(cat index.yaml | yq ".entries[\"${chartname}\"][]")
	printf '%s\n' \
		'   ' \
		'#### Chart.yaml' \
		'```yaml' \
		"$contents" \
		'```' \
	>> details/$chartfullname/README.md
}

function loopCharts() {
    local charts=("$@")
    local charts_length=${#charts[@]}
    for (( j=0; j<charts_length; j++ )); do
        local chartname=${charts[$j]}
        local chartVersions=$(yq ".entries[\"${chartname}\"][].version" index.yaml)
		loopChartVersions $chartname $chartVersions
    done
}

function loopCategories() {
	for category in "${categories[@]}"; do
		if [ $category != 'null' ]; then
			printf '%s\n' \
				'   ' \
				"#### $category" \
			>> README.md
			local charts=($(yq -r ".entries | to_entries[] | select(.value[].annotations.category == \"$category\") | .key" index.yaml))
			#charts=($(yq -r '.entries | to_entries[] | select(.value[].annotations.category == "'$category'") | .key' index.yaml))
		#null은 마지막으로 정렬됨
		else
			printf '%s\n' \
				'   ' \
				'#### Undefined Category' \
			>> README.md
			local charts=($(yq -r '.entries | to_entries[] | select((.value[] | has("annotations") | not) or (.value[].annotations | has("category") | not)) | .key' index.yaml))
		fi
		loopCharts "${charts[@]}"
	done
}


#### Main ####

function main() {
	local SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
	cd $SCRIPT_DIR/../charts

	generatePage "page" "Charts" "/charts/" "README.md"

	printf '%s\n' \
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
	>> "README.md"

	local categories=($(cat index.yaml | yq ".entries[][].annotations.category" | sort | uniq))
	#charts=($(cat index.yaml | yq '.entries | keys[]'))
	loopCategories categories
}

main
