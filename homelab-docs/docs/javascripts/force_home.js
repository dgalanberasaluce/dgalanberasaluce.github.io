document.addEventListener("DOMContentLoaded", function() {
    // 1. Cambiar el enlace del Logo (Icono)
    var logo = document.querySelector(".md-header__button.md-logo");
    if (logo) {
        logo.setAttribute("href", "/"); // Redirige a la raíz del dominio
    }

    // 2. Cambiar el enlace del Título (Texto del sitio)
    // El tema Material a veces pone el enlace dentro de un <a> dentro del título
    var titleLink = document.querySelector(".md-header__topic a");
    if (titleLink) {
        titleLink.setAttribute("href", "/");
    }
});