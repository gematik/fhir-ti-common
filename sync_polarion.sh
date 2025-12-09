#!/bin/bash
# igtools polarion input/content

if [ -z "${POLARION_TOKEN}" ]; then
  read -r -p "Please enter your token: " INPUT_TOKEN
  if [ -z "${INPUT_TOKEN}" ]; then
    echo "Error: No token provided." >&2
    exit 1
  fi
  TOKEN="${INPUT_TOKEN}"
else
  TOKEN="${POLARION_TOKEN}"
fi

curl -X POST -k -H "Content-Type: application/json" -H "Authorization: ${TOKEN}" https://pet-gematikde.msappproxy.net/polarion/gematik/importExternalRequirements -d@input/content/polarion-requirements.json