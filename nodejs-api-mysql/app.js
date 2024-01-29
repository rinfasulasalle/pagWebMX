const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(cors());
const port = 3000;

// Configura la conexión a la base de datos
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "171222",
  database: "empresa_mx",
});

// Conecta a la base de datos
connection.connect((err) => {
  if (err) {
    console.error("Error al conectar a la base de datos:", err);
  } else {
    console.log("Conexión a la base de datos establecida");
  }
});

// Ruta para obtener la lista de productos
app.get("/api/productos", (req, res) => {
  const query = "SELECT * FROM productos";

  connection.query(query, (err, results) => {
    if (err) {
      console.error("Error al ejecutar la consulta:", err);
      res.status(500).send("Error al obtener los productos");
    } else {
      res.json(results);
    }
  });
});

// Cierra la conexión a la base de datos al cerrar la aplicación
process.on("SIGINT", () => {
  connection.end();
  process.exit();
});

// Inicia el servidor
app.listen(port, () => {
  console.log(`Servidor iniciado en http://localhost:${port}`);
});
