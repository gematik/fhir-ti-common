#!/usr/bin/env bash
# Copyright 2026-2026 gematik GmbH;
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LINK_PARAMETER="page-link"
IG_TEMPLATE_NAME="1-KOMMENTIERUNG.yml"
OUTPUT_JS="./input/content/assets/js/heading-links.js"
mkdir -p "$(dirname "$OUTPUT_JS")"

cat > "$OUTPUT_JS" <<EOF

// === AUTO-GENERATED FILE ===
// Do not edit by hand; edit scripts/generate-heading-links-js.sh instead.
// Copyright 2026-2026 gematik GmbH;
// For additional notes and disclaimer from gematik and in case of changes by gematik, find details in the "Readme" file.

const newIssueGithubLink = "https://github.com/gematik/fhir-ti-common/issues/new?template=$IG_TEMPLATE_NAME";
const linkParameter = "$LINK_PARAMETER";

document.addEventListener("DOMContentLoaded", function() {
  setTimeout(function() {
    const headings = document.querySelectorAll("h1, h2, h3, h4, h5, h6, .requirement p.heading");
    
    const style = document.createElement('style');
    style.textContent = '.requirement:hover .bubble-link { display: inline; } .bubble-link::after { display: none !important; content: none !important; }';
    document.head.appendChild(style);

    headings.forEach(function(heading) {
      const link = document.createElement('a');
      link.className = "bubble-link";
      link.innerHTML = '<svg width="18" height="14" viewBox="0 0 24 20" style="vertical-align:middle; margin-left: 6px;"><path d="M2 10c0-4.418 4.477-8 10-8s10 3.582 10 8-4.477 8-10 8c-1.258 0-2.462-.146-3.574-.418l-4.048 1.523c-.326.123-.63-.182-.507-.507l1.523-4.048C2.146 12.462 2 11.258 2 10z" fill="#1818a8"/></svg>';
      link.href = newIssueGithubLink;
      link.target = "_blank";
      link.title = "Feedback oder Änderung vorschlagen";

      link.addEventListener('click', function(event) {
        event.preventDefault();
        const baseUrl = window.location.href.split('#')[0];

        let anchor = '';
        const requirementDiv = heading.closest('.requirement');
        if (requirementDiv && requirementDiv.id) {
          anchor = '#' + requirementDiv.id;
        } else {
          const anchorEl = heading.querySelector('a.anchorjs-link');
          if (anchorEl) {
            anchor = anchorEl.getAttribute('href') || '';
          } else if (heading.id) {
            anchor = '#' + heading.id;
          }
        }

        const url = new URL(newIssueGithubLink);
        url.searchParams.set(linkParameter, baseUrl + anchor);
        if (igTagValue) {
          url.searchParams.set(igTagParameter, igTagValue);
        }
        window.open(url.toString(), '_blank');
      });

      heading.insertAdjacentElement('beforeend', link);
    });
  }, 200);
});
EOF

echo "heading-links.js generated at $OUTPUT_JS"
