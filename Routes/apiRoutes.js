const mysql = require('mysql');
const router = require('express').Router();



var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: process.env.DB_PASS,
    database: "Furniture"
});





router.get('/allproducts', (req, res) => {
    connection.query("SELECT Price.product_ID,Products.product_Name,Products.Category_ID,Price.Price,Products.About,Products.Images,Products.Category FROM Price INNER JOIN Products ON Price.product_ID = Products.product_ID GROUP BY product_ID;", function (err, data) {
        res.json(data)
    })
})

router.get('/products/:query', (req, res) => {
    let item = req.params.query
    connection.query("SELECT Products.product_Name,Products.About,Products.Images,Products.Category, Price.Price FROM Price INNER JOIN Products ON Price.Product_ID = Products.Product_ID WHERE Products.Category = ?;"
        , [item], function (err, data) {
            console.log(item)
            res.json(data)
        })
})

router.get('/contact', (req, res) => {
    connection.query("SELECT * FROM Contact", function (err, data) {
        res.json(data)
    })
})

module.exports = router;

// paramaterizing querys for security purposes so your not vunerable to sql injections// 
