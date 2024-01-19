function loadContent(section) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
            if (this.status == 200) {
                document.getElementById("main-content").innerHTML = this.responseText;
            } else {
                // Manejo de errores
                document.getElementById("main-content").innerHTML = "Por el momento la página no se encuentra disponible :(";
            }
        }
    };
    xhttp.onerror = function() {
        // Manejo de errores de red u otros errores
        document.getElementById("main-content").innerHTML = "Se produjo un error al cargar la página.";
    };
    xhttp.open("GET", "app/views/" + section + ".php", true);
    xhttp.send();
}