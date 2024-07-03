const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'placas'
});

connection.connect((err) => {
    if (err) {
        console.error('error en coneccion : ' + err.stack);
        return;
    }
    console.log('Base de datos Placas conectada ');
});

module.exports = connection;
