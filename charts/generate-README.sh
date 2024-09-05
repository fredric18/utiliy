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
cd $SCRIPT_DIR

charts=($(cat index.yaml | yq '.entries | keys[]'))
rm README.md
# 형식 문자열 없이 바로 문자열을 출력
printf '%s\n' "---" "layout: page" "title: Charts" "permalink: /charts/" "toc: true" "---" > README.md
printf '%s\n' "### Adding Repository" \
  "\`\`\`shell" \
  "helm repo add fredric18 https://utils.fredric18.online/charts" \
  "\`\`\`" >> README.md
printf '%s\n' "### Chart List" >> README.md

for chartname in "${charts[@]}"; do
    contents=$(cat index.yaml | yq ".entries[\"${chartname}\"][]")
    # %s를 사용하여 안전하게 변수 출력
    printf "#### %s \n\n\`\`\`yaml\n%s\n\`\`\`\n\n" "$chartname" "$contents" >> README.md
done
