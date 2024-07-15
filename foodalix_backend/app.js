const express = require("express");
const bodyParser = require("body-parser");
const UserRouter = require('./routers/user_route');

const app = express();
app.use(bodyParser.json());
app.use('/', UserRouter);

module.exports = app;
