const mysql = require('mysql');
//import mysql from 'mysql2' /* LOS MODULOS DE TERCEROS NO LLEVAN LA EXTESION .js */

///const mysql = require("mysql2")
///require('dotenv').config()
///usando archivo .env:
///IP='127.0.0.1'
///PORT=3000
///DB_USER="ffrontera"
///DB_PWD="3zcaw5FF#"
///DB_NAME="biblioteca"
///SECRET_KET='123456'


const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'placas'
    
    //host: "mysql-mvarela.alwaysdata.net", //o es https://phpmyadmin.alwaysdata.com/?
    //user: "mvarela_admin", // alwaysdata no me deja  poner root, y obliga a que el usuario inicie con esos números
    //password: "!test1234@",//alwaysdata no me deja  poner root
    //database: "mvarela_sweetbite",//alwaysdata obliga a que el usuario inicie con esos números

    ///host: process.env.DB_HOST,
    ///user: process.env.DB_USER,
    ///password: process.env.DB_PASS,
    ///database: process.env.DB_NAME
});

connection.connect((err) => {
    if (err) {
        console.error('Error en coneccion a la DB: ' + err.stack);
        return;
    }
    console.log('DB Placas conectada con exito');
});

module.exports = connection;
//export default connection; /* asi se exporta */
