#!/bin/sh
set -eu

settings_file=${FHIR_SETTINGS_FILE:-"$HOME/.fhir/fhir-settings.json"}

if [ "$#" -eq 0 ]; then
  set -- https://github.com/gematik/fhir2-ig-template
fi

mkdir -p "$(dirname "$settings_file")"
tmp_file=$(mktemp "${settings_file}.XXXXXX")
trap 'rm -f "$tmp_file"' EXIT
trap 'exit 1' HUP INT TERM

if [ -f "$settings_file" ]; then
  settings_json=$(cat "$settings_file")
else
  settings_json='{}'
fi

printf '%s\n' "$settings_json" |
  jq -e -s '
    if length != 1 or (.[0] | type) != "object" then
      error("Expected one JSON object in the FHIR settings file")
    else
      .[0]
    end
    | .trustedTemplates //= []
    | if (.trustedTemplates | type) != "array" then
        error("trustedTemplates must be an array")
      else
        .trustedTemplates |= reduce $ARGS.positional[] as $template (.;
          if index($template) == null then . + [$template] else . end
        )
      end
  ' --args "$@" > "$tmp_file"

mv "$tmp_file" "$settings_file"
printf 'Update trustedTemplates in %s\n' "$settings_file"
