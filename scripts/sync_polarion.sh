#!/bin/bash
# igtools polarion input/content
# Copyright 2026-2026 gematik GmbH;

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)" || exit 1
REQUIREMENTS_FILE="${SCRIPT_DIR}/../input/content/polarion-requirements.json"

if [ ! -r "${REQUIREMENTS_FILE}" ]; then
  echo "Error: Cannot read ${REQUIREMENTS_FILE}" >&2
  exit 1
fi

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

curl -X POST -k -H "Content-Type: application/json" -H "Authorization: ${TOKEN}" https://pet-gematikde.msappproxy.net/polarion/gematik/importExternalRequirements --data-binary "@${REQUIREMENTS_FILE}"
