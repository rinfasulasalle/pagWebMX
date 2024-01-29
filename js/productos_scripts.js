document.addEventListener("DOMContentLoaded", function () {
  const productosContainer = document.getElementById("productosContainer");

  // Obtener datos de la API
  fetch("http://localhost:3000/api/productos")
    .then((response) => response.json())
    .then((productos) => {
      console.log(productos);
      // Generar tarjetas de productos dinámicamente
      productos.forEach((producto, index) => {
        const productoCard = document.createElement("div");
        productoCard.classList.add("producto-card");
        productoCard.innerHTML = `
            <img src="${producto.url_imagen}" alt="${
          producto.titulo
        }" class="producto-imagen">
            <h3 class="producto-nombre">${producto.titulo}</h3>
            <p class="producto-precio">${formatoMoneda(
              parseFloat(producto.precip)
            )}</p>
            <button class="ver-detalle-btn" data-index="${index}">Ver Detalles</button>
            <p class="producto-descripcion" style="display:none;">${
              producto.descripcion
            }</p>
        `;
        productosContainer.appendChild(productoCard);
      });

      // Obtener todos los botones de "Ver Detalles"
      const verDetalleBotones = document.querySelectorAll(".ver-detalle-btn");
      const modal = document.getElementById("modal");
      const modalTitle = document.getElementById("modal-title");
      const modalDescription = document.getElementById("modal-description");
      const closeButton = document.querySelector(".close-button");

      verDetalleBotones.forEach((button, index) => {
        button.addEventListener("click", () => {
          // Mostrar el modal
          modal.style.display = "block";
          // Mostrar el contenido del producto en el modal
          modalTitle.textContent = productos[index].titulo;
          modalDescription.textContent = productos[index].descripcion;
        });
      });
    })
    .catch((error) =>
      console.error("Error al obtener datos de la API:", error)
    );

  function formatoMoneda(precio) {
    return `$${precio.toFixed(2)} MXN`;
  }
});
