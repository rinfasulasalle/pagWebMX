document.addEventListener("DOMContentLoaded", function () {
  const productosContainer = document.getElementById("productosContainer");

  const productos = [
    {
      nombre: "Saco de Comida Premium para Vacas Lecheras",
      descripcion:
        "Este saco de comida para vacas lecheras es una fórmula de alta calidad diseñada para satisfacer las necesidades nutricionales de las vacas en producción de leche. Cada saco contiene una mezcla equilibrada de ingredientes de primera calidad, seleccionados cuidadosamente para garantizar la salud y el rendimiento óptimo de sus vacas.",
      precio: 480.0,
      imagen: "img/product_01.png",
    },
    {
      nombre: "Alimento Premium para Gallos de Pelea",
      descripcion:
        "Nuestro alimento premium para gallos de pelea es la elección perfecta para quienes valoran el bienestar y el rendimiento de sus gallos. Cada saco contiene una mezcla de ingredientes de primera calidad cuidadosamente seleccionados para proporcionar a sus aves la nutrición superior que necesitan para competir en su mejor forma.",
      precio: 430.0,
      imagen: "img/product_02.png",
    },
    {
      nombre:
        "Comida Premium para Caballos: Nutrición de Excelencia para su Compañero Equino",
      descripcion:
        "Alto Contenido de Fibra y Forraje: Nuestra fórmula está enriquecida con fibra y forraje de calidad para promover una digestión saludable y satisfacer las necesidades naturales de pastoreo de los caballos. Balance Nutricional Óptimo: Contiene la proporción adecuada de proteínas, carbohidratos, grasas, vitaminas y minerales esenciales para mantener una salud óptima y una energía sostenible. Mezcla de Vitaminas y Minerales: Enriquecida con vitaminas A, D, y E.",
      precio: 490.0,
      imagen: "img/product_03.png",
    },
    {
      nombre:
        "Comida Premium para Caballos: Nutrición de Excelencia para su Compañero Equino",
      descripcion:
        "Mezcla de Vitaminas y Minerales: Enriquecida con vitaminas A, D, y E, así como minerales como el zinc, selenio y calcio, que respaldan el sistema inmunológico, la salud ósea y la vitalidad general. Pelo Brillante y Piel Sana: Los ácidos grasos esenciales promueven un pelaje saludable y brillante, así como una piel en buen estado. Fortalecimiento de Huesos y Articulaciones: La adición de glucosamina y condroitina ayuda a mantener la salud de las articulaciones y el sistema locomotor.",
      precio: 400.0,
      imagen: "img/product_04.png",
    },
    {
      nombre:
        "Comida Premium para Cerdos: Nutrición de Calidad para el Crecimiento y la Salud",
      descripcion:
        "Fortalecimiento Óseo: Contiene calcio y otros minerales esenciales para mantener huesos fuertes y saludables. Ideal para Diferentes Etapas de Vida: Apta para cerdos en crecimiento, reproductores y cerdos en mantenimiento, proporcionando una nutrición adaptada a las necesidades de cada uno. Facilidad de Alimentación: Diseñada para ser apetitosa y fácilmente consumible, promoviendo una alimentación constante y satisfactoria.",
      precio: 500.0,
      imagen: "img/product_05.png",
    },
  ];

  productos.forEach((producto, index) => {
    const productoCard = document.createElement("div");
    productoCard.classList.add("producto-card");
    productoCard.innerHTML = `
        <img src="${producto.imagen}" alt="${
      producto.nombre
    }" class="producto-imagen">
        <h3 class="producto-nombre">${producto.nombre}</h3>
        <p class="producto-precio">${formatoMoneda(producto.precio)}</p>
        <button class="ver-detalle-btn" data-index="${index}" style = "  background-color: #0072b5;
        color: #fff;
        border: none;
        padding: 15px 30px; /* Aumenta el padding para aumentar el tamaño del botón */
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        font-size: 18px; /* Aumenta el tamaño del texto del botón */">Ver Detalles</button>
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
      modalTitle.textContent = productos[index].nombre;
      modalDescription.textContent = productos[index].descripcion;
    });
  });

  // Cerrar el modal cuando se hace clic en el botón de cierre
  closeButton.addEventListener("click", () => {
    modal.style.display = "none";
  });

  // Cerrar el modal cuando se hace clic fuera de él
  window.addEventListener("click", (event) => {
    if (event.target === modal) {
      modal.style.display = "none";
    }
  });

  function formatoMoneda(precio) {
    return `$${precio.toFixed(2)} MXN`;
  }
});
