#!/bin/bash

# Error handling: The script will terminate on error.
set -e

. "$(dirname "$0")/config.sh"

case "$ENVIRONMENT" in
  DEV) BUCKET_NAME=${BUCKET_NAME_DEV} ;;
  PROD) BUCKET_NAME=${BUCKET_NAME_PROD} ;;
  *)
    echo "❌ Error: Set environment 'DEV' or 'PROD'."
    exit 1
  ;;
esac

echo "✅ ENVIRONMENT: ${ENVIRONMENT}"
echo "✅ TARGET PATH: ${BUCKET_NAME}${BUCKET_PATH}/${TARGET}"
if [ -n "$PREV" ]; then
  echo "✅ PREV PATH: ${BUCKET_NAME}${BUCKET_PATH}/${PREV}"
fi

./build_ig.sh

if gsutil ls gs://$BUCKET_NAME$BUCKET_PATH/$TARGET > /dev/null 2>&1; then
    echo "TARGET directory already exists: ${TARGET}"
    exit 1
    # if [ -n "$PREV" ]; then
    #     echo "Moving TARGET to PREV: ${PREV}"
    #     gcloud storage mv gs://$BUCKET_NAME$BUCKET_PATH/$TARGET gs://$BUCKET_NAME$BUCKET_PATH/$PREV
    # fi
    # echo "Deleting existing TARGET: $TARGET"
    # gcloud storage rm --recursive gs://$BUCKET_NAME$BUCKET_PATH/$TARGET
else
    echo "TARGET directory does not exist"
fi

echo "Uploading new version to TARGET: ${TARGET}"
# gcloud storage cp --recursive --cache-control="no-cache" ./output/ gs://$BUCKET_NAME$BUCKET_PATH/$TARGET
gsutil -h "Cache-Control:no-cache" cp -r ./output/* gs://$BUCKET_NAME$BUCKET_PATH/$TARGET/
