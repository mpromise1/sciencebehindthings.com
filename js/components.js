document.addEventListener("DOMContentLoaded", () => {
    // 1. Fetch Navbar using an absolute path (starts with /)
    const navContainer = document.getElementById("global-navbar");
    if (navContainer) {
        fetch("/components/navbar.html")
            .then(response => response.text())
            .then(html => {
                navContainer.innerHTML = html;
                highlightActiveLink();
                // Safety math processing call
                triggerMathJaxRefresh();
            })
            .catch(err => console.error("Error loading navbar:", err));
    }

    // 2. Fetch Footer using an absolute path (starts with /)
    const footerContainer = document.getElementById("global-footer");
    if (footerContainer) {
        fetch("/components/footer.html")
            .then(response => response.text())
            .then(html => {
                footerContainer.innerHTML = html;
                // Core math processing call
                triggerMathJaxRefresh();
            })
            .catch(err => console.error("Error loading footer:", err));
    }
});

// A robust math renderer function that triggers regardless of script race conditions
function triggerMathJaxRefresh() {
    if (window.MathJax) {
        if (window.MathJax.typesetPromise) {
            window.MathJax.typesetPromise();
        } else if (window.MathJax.typeset) {
            window.MathJax.typeset();
        }
    }
}

function highlightActiveLink() {
    const currentPath = window.location.pathname.split("/").pop() || "index.html";
    const navLinks = document.querySelectorAll(".main-nav a");
    
    navLinks.forEach(link => {
        const linkPath = link.getAttribute("href");
        if (currentPath === linkPath) {
            link.classList.add("active");
        } else {
            link.classList.remove("active");
        }
    });
}