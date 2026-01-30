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
function loadHTML(cla, url) {
  fetch(url)
    .then(response => {
      if (!response.ok) {
        throw new Error(`Failed to load ${url}`);
      }
      return response.text();
    })
    .then(html => {
      document.querySelector(cla).innerHTML = html;
      Prism.highlightAll();
      writetoc()
    })
    .catch(err => {
      console.error(err);
    });
}
document.addEventListener("DOMContentLoaded", () => {
    const navitemes = document.querySelectorAll(".nav-item-text");
    navitemes.forEach(navitem => {
        navitem.addEventListener("click", () => { loadHTML(".article", `/partials/${navitem.id}.html`) })
    });
    loadHTML(".article", "/partials/homepage.html");
});
