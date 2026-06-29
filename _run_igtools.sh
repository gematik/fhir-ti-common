#!/bin/bash
# Copyright 2026-2026 gematik GmbH;
# Disable immediate exit on error
set +e 

igtools release --is-final
release_status=$?

# Error handling: The script will terminate on error.
set -e

if [ "$release_status" -eq 0 ]; then
    echo "RUN 'igtools process'..."
    igtools process
    echo "'igtools process' DONE."

    echo "RUN 'igtools ig-release-notes input/data'..."
    igtools ig-release-notes input/data
    echo "'igtools ig-release-notes' DONE."

    echo "RUN 'igtools export input/data'..."
    igtools export input/data
    echo "'igtools export' DONE."

    echo "All igtools commands executed successfully."
fi