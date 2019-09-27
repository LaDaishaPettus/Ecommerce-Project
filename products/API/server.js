const express = require('express');
const app = express();
//const cors = require('cors');
const mysql = require('mysql')
require('dotenv').config()
// const morgan = require('morgan')
// const helmet = require('helmet')
const cors = require('cors');

// var router = require 
// var contact = require 


app.use(express.urlencoded({ extended: true }));
app.use(express.json());
// app.use(morgan());
// app.use(helmet());
app.use(cors());
//app.use(cors())


//app.use('/api', router)
//app.use('/api', contact)

var connection = mysql.createConnection({
    host: "localhost",
    // db port
    port: 3306,
    user: "root",
    password: 'Daisha11',
    database: "Furniture"
});

connection.connect()

app.get('/allproducts', (req, res) => {
    connection.query("SELECT * FROM Price INNER JOIN Products ON Price.Product_ID = Products.Product_ID", function (err, data) {
        res.json(data)
    })
})

app.get('/contact', (req, res) => {
    connection.query("SELECT * FROM Contact", function (err, data) {
        res.json(data)
    })
})

app.get('/products/:query', (req, res) => {
    let item = req.params.query
    connection.query("SELECT * FROM Products WHERE Product_ID = ?", [item], function (err, data) {
        res.json(data)
    })
})

app.listen(3001)