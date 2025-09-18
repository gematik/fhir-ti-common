#!/bin/bash

# Error handling: The script will terminate on error.
set -e

. "$(dirname "$0")/config.sh"

echo "✅ PUBLISH_URL: ${PUBLISH_URL}"

./_run_igtools.sh
sushi
# epatools merge
java -jar ./input-cache/publisher.jar -no-sushi -ig . -publish $PUBLISH_URL
# epatools openapi
