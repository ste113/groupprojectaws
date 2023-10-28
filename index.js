const express = require("express");
let passport = require("passport");
let app = express();
const exphbs = require("exphbs");
var bodyParser = require("body-parser");
var authRouter = require("./routes/auth");
var registerRouter = require("./routes/register");
var quizRouter = require("./routes/qanda")
let https = require('https');
let fs = require('fs');
require("dotenv").config();

app.use(bodyParser.json()); // to support JSON bodies
app.use(bodyParser.urlencoded({ extended: true }));


const options = {
  cert: fs.readFileSync('/etc/ssl/certs/ssl-cert-snakeoil.pem'),
  key: fs.readFileSync('/etc/ssl/private/ssl-cert-snakeoil.key'),
};


app.engine("hbs", exphbs.create());
app.set("view engine", "hbs");

app.use("/", authRouter);
app.use("/", registerRouter);
app.use("/", quizRouter);

https.createServer(options, app).listen(443);

