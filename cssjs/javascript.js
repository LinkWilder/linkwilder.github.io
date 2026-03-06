// ========== 主题切换功能 ==========
function initTheme() {
    const savedTheme = localStorage.getItem("theme");
    if (savedTheme) {
        document.documentElement.setAttribute("data-theme", savedTheme);
    }
    // 更新按钮图标
    updateThemeIcon();
}
function updateThemeIcon() {
    const btn = document.getElementById("theme-toggle-btn");
    if (!btn) return;
    const isDark = document.documentElement.getAttribute("data-theme") === "dark";
    btn.textContent = isDark ? "☀️" : "🌙";
}
function toggleTheme() {
    const isDark = document.documentElement.getAttribute("data-theme") === "dark";
    const newTheme = isDark ? "light" : "dark";
    document.documentElement.setAttribute("data-theme", newTheme);
    localStorage.setItem("theme", newTheme);
    updateThemeIcon();
}
// 页面加载前立即应用主题，避免闪烁
initTheme();

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

    // 汉堡菜单切换逻辑
    const hamburger = document.getElementById("hamburger-btn");
    const navMenu = document.querySelector("nav > ul");
    if (hamburger && navMenu) {
        hamburger.addEventListener("click", () => {
            hamburger.classList.toggle("active");
            navMenu.classList.toggle("show");
        });
        // 点击导航链接后自动关闭菜单（移动端）
        navMenu.querySelectorAll("a").forEach(link => {
            link.addEventListener("click", () => {
                hamburger.classList.remove("active");
                navMenu.classList.remove("show");
            });
        });
        // 点击页面其他区域关闭菜单
        document.addEventListener("click", (e) => {
            if (!hamburger.contains(e.target) && !navMenu.contains(e.target)) {
                hamburger.classList.remove("active");
                navMenu.classList.remove("show");
            }
        });
    }

    // 主题切换按钮绑定
    const themeBtn = document.getElementById("theme-toggle-btn");
    if (themeBtn) {
        themeBtn.addEventListener("click", toggleTheme);
        updateThemeIcon(); // 确保 DOM 加载后图标正确
    }
});
