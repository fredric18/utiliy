#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $SCRIPT_DIR

charts=($(cat index.yaml | yq '.entries | keys[]'))
rm README.md
echo "---\nlayout: page\ntitle: Charts\npermalink: /charts/\ntoc: true\n---" > README.md
echo "### Adding Repository\n\`\`\`shell\nhelm repo add fredric18 https://utils.fredric18.online/charts\n\`\`\`" >> README.md
echo "### Chart List" >> README.md
for chartname in ${charts[@]}; do
		contents=$(cat index.yaml | yq ".entries[\"${chartname}\"][]")
		echo "#### $chartname \n\n\`\`\`yaml\n$contents\n\`\`\`\n\n" >> README.md
done
