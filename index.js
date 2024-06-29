const express = require("express");
const app = express();

const path = require("path");

//Midleware para archivos estáticos y públicos
app.use(express.static(path.join(__dirname, "public")));
app.use(express.json());

app.use("/productos", require("./rutas/productosRutas"));
