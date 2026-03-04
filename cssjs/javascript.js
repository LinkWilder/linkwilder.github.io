function writetoc() {
    const artheaders = document.querySelector(".middle-container").querySelectorAll("h2, h3, h4");
    const tocContainer = document.getElementById("current-contents");
    let toc = "<ul>";
    artheaders.forEach(header => {
        if (!header.id) {header.id = 'section-' + Math.random().toString(36).substr(2, 9)};
        it = `<li><a href="#${header.id}">${header.textContent}</a></li>`
        const level = parseInt(header.tagName.charAt(1))
        it = "<ul>".repeat(level-2) + it + "</ul>".repeat(level-2)
        toc = toc + it;
    });
    toc = toc + "</ul>";
    tocContainer.innerHTML = toc;
}
document.addEventListener("DOMContentLoaded", () => {
    const navitemes = document.querySelectorAll("nav a");
    navitemes.forEach(navitem => {
        navitem.addEventListener("click", () => { writetoc() })
    });
    writetoc();
});
