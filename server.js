const express = require('express');
const app = express();
require('dotenv').config()
//logs traffic when your API endpoints are hit/ 
const morgan = require('morgan')

//security for header//
const helmet = require('helmet')

const router = require('/Users/ladaishapettus/Documents/ecomProject/Routes/apiRoutes.js');
const path = require('path')

// middleware is being defined here, middlewear runs before the actual endpoints // 

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(morgan());
app.use(helmet());
app.use('/api', router);

// Send every request to the React app// 

app.get("*", function (req, res) {
    res.sendFile(path.join(__dirname, "./Client/public/index.html"));
});



app.listen(3001)