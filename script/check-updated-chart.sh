#!/bin/bash
# Copyright September 8, 2024 Myeong-han Kim.
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
FLAG=$(git diff --name-only HEAD HEAD~1 | grep '.tgz' | grep '/' | cut -d '/' -f 1 | sort | uniq)
if [ "$FLAG" == "charts" ]; then
   helm package . 
   echo "Changes are detected and the helm chart is updated."
else
   echo "No changes detected"
fi
