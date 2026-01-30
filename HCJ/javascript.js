function writetoc() {
    const artheaders = document.querySelector(".article").querySelectorAll("h1, h2, h3");
    const tocContainer = document.getElementById("current-contents");
    let toc = "<ul>";
    artheaders.forEach(header => {
        if (!header.id) {header.id = 'section-' + Math.random().toString(36).substr(2, 9)};
        it = `<li><a href="#${header.id}">${header.textContent}</a></li>`
        const level = parseInt(header.tagName.charAt(1))
        it = "<ul>".repeat(level-1) + it + "</ul>".repeat(level-1)
        toc = toc + it;
    });
    toc = toc + "</ul>";
    tocContainer.innerHTML = toc;
}
document.addEventListener("DOMContentLoaded", () => { writetoc() });





function loadHTML(id, url) {
  fetch(url)
    .then(response => {
      if (!response.ok) {
        throw new Error(`Failed to load ${url}`);
      }
      return response.text();
    })
    .then(html => {
      document.getElementById(id).innerHTML = html;
    })
    .catch(err => {
      console.error(err);
    });
}

loadHTML('header-container', '/partials/header.html');
// loadHTML('footer-container', '/partials/footer.html');
