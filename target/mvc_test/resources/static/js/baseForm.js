var navbarContainer = document.getElementById("navbar-container");
var xhrNavbar = new XMLHttpRequest();
xhrNavbar.open("GET",
    "/resources/templates/navbar.html", false);
xhrNavbar.onreadystatechange = function() {
    if (xhrNavbar.readyState === 4 && xhrNavbar.status === 200) {
        navbarContainer.innerHTML = xhrNavbar.responseText;
        initializeNavbarEvents();
    }
};

function initializeNavbarEvents() {
    var menuButton = document.querySelector('.menu-button');
    var navMenu = document.querySelector('.nav-menu');
    if (menuButton && navMenu) {
        menuButton.addEventListener('click', function() {
            navMenu.classList.toggle('show-menu');
        });
    }
}


xhrNavbar.send();
var footerContainer = document.getElementById("footer-container");
var xhrFooter = new XMLHttpRequest();
xhrFooter.open("GET", "/resources/templates/footer.html", true);
xhrFooter.onreadystatechange = function() {
    if (xhrFooter.readyState === 4 && xhrFooter.status === 200) {
        footerContainer.innerHTML = xhrFooter.responseText;
    }
};
xhrFooter.send();

