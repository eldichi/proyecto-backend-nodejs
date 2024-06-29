const express = require("express");
const router = express.Router();

const productos = [
  { id: 1, nombre: "Producto Nro1" },
  { id: 1, nombre: "Producto Nro1" },
  { id: 1, nombre: "Producto Nro1" },
  { id: 1, nombre: "Producto Nro1" },
];

router.get("/", (req, res) => {
  res.send(productos);
});

//Productos por /:id

router.get("/:id", (req, res) => {
  const { id } = req.params; // Aquí se obtiene el parámetro de la URL llamado 'id'
  const producto = productos.find((elemento) => elemento.id == id); // Aquí se busca el producto con el id proporcionado

  // Verificar si se encontró el producto
  if (producto) {
    res.send(producto); // Si se encuentra, se envía el producto como respuesta
  } else {
    res.status(404).send("Producto no encontrado"); // Si no se encuentra, se envía un mensaje de error 404
  }
  res.json(producto)
});

//Ruta para crear un nuevo producto
router.post("/", (req, res) => {
    console.log(req.body)  // Mostrar en consola los datos recibidos en la solicitud (para propósitos de prueba)
    res.send("Producto creado"); // Enviar mensaje de confirmación
  });



module.exports = router;