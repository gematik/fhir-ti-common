
// === AUTO-GENERATED FILE ===
// Do not edit by hand; edit scripts/generate-heading-links-js.sh instead.

const newIssueGithubLink = "https://github.com/gematik/fhir-ti-common/issues/new?template=1-KOMMENTIERUNG.yml";
const linkParameter = "page-link";

document.addEventListener("DOMContentLoaded", function() {
  setTimeout(function() {
    const headings = document.querySelectorAll("h1, h2, h3, h4, h5, h6, .requirement p.heading");

    headings.forEach(function(heading) {
      const link = document.createElement('a');
      link.className = "bubble-link";
      link.innerHTML = ;
      link.href = newIssueGithubLink;
      link.target = "_blank";
      link.title = "Feedback oder Änderung vorschlagen";

      link.addEventListener('click', function(event) {
        event.preventDefault();
        const currentUrl = window.location.href;
        const url = new URL(newIssueGithubLink);
        url.searchParams.set(linkParameter, currentUrl);
        if (igTagValue) {
          url.searchParams.set(igTagParameter, igTagValue);
        }
        window.open(url.toString(), '_blank');
      });

      heading.insertAdjacentElement('beforeend', link);
    });
  }, 200);
});
