// Obtén el modal y el botón para abrirlo
var modal = document.getElementById("myModal");
var btn = document.getElementById("verDescripcionBtn");

// Obtén el elemento <span> que cierra el modal
var span = document.getElementsByClassName("close")[0];

// Cuando el usuario haga clic en el botón, abre el modal
btn.onclick = function () {
  modal.style.display = "block";
};

// Cuando el usuario haga clic en <span> (x), cierra el modal
span.onclick = function () {
  modal.style.display = "none";
};

// Cuando el usuario haga clic fuera del modal, también ciérralo
window.onclick = function (event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
};
