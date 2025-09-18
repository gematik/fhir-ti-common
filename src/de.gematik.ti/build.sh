#!/bin/sh

SUSHI_VERSION=3.14.0
IGPUB_VERSION=1.8.22
OUTPUT_DIR=$PWD/output-ig
PUBLISH_URL=https://gematik.de/fhir/ti/1.1.1

curl -L https://raw.githubusercontent.com/cybernop/build-fhir-ig/main/docker/scripts/build-fhir-ig.sh -o build-fhir-ig.sh
. ./build-fhir-ig.sh
