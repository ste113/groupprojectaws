var express = require("express");
var router = express.Router();
var passport = require("passport");
var LocalStrategy = require("passport-local");
var bcrypt = require("bcrypt");
require("dotenv").config();
var session = require("express-session");
var postgresstore = require("connect-pg-simple")(session);

const knex = require("knex")({
  client: "postgresql",
  connection: {
    database: process.env.DATABASE_NAME,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
  },
});

const path = require("node:path");

const sessionStore = new postgresstore({
  conString: `postgresql://localhost/${process.env.DATABASE_NAME}?user=${process.env.DB_USERNAME}&password=${process.env.DB_PASSWORD}`,
});

router.use(express.static(path.join(__dirname, "public")));
router.use(
  session({
    secret: "keyboard cat",
    resave: false,
    saveUninitialized: false,
    store: sessionStore,
  }),
);
router.use(passport.authenticate("session"));

passport.use(
  new LocalStrategy(async function verify(username, password, cb) {
    let selected = await knex("users")
      .select("*")
      .where("username", "=", username);
    let row = selected[0];

    
    try {
      if (await bcrypt.compare(password, row.password)) {
        return cb(null, row);
      } 
    } catch (e) {
      return cb(e);
    }
  }),
);

passport.serializeUser(function (user, cb) {
  process.nextTick(function () {
    cb(null, { id: user.id, username: user.username });
  });
});

passport.deserializeUser(function (user, cb) {
  process.nextTick(function () {
    return cb(null, user);
  });
});





router.post("/logout", function (req, res, next) {
  req.logout(function (err) {
    if (err) {
      return next(err);
    }
    res.redirect("/");
  });
});

router.get("/login", (req, res) => {
  res.render("login", { layout: "main" });
});

router.get("/", async (req, res) => {
  let array = await knex("questionsets").select("*");
  let quizid = array[Math.floor(Math.random() * array.length)].setname;
  let appointmentrows = await knex("appointments").select("*");
  if(req.user !== undefined){
    let loggedinuser = await knex("users")
    .select("*")
    .where("username", "=", req.user.username);
    if (loggedinuser[0].role === "admin") {
    res.render("adminpanel", {
      layout: "main",
      name: req.user.username,
      quizid: quizid,
      appointments: appointmentrows
    });
  } else {
    res.render("loggedin", {
      layout: "main",
      name: req.user.username,
      quizid: quizid,
    });
  } 
  }
  else {
    res.render("loggedout", { layout: "main" });
  }
  
}); 

router.post("/", async (req, res) => {
  let array = await knex("questionsets").select("*");
  let quizid = array[Math.floor(Math.random() * array.length)].setname;
  await knex("appointments").insert({
    time: req.body.time.toString().replace("T", " "),
    name: req.body.name,
  });
  let appointmentrows = await knex("appointments").select("*");


  if(req.user !== undefined){
    let loggedinuser = await knex("users")
    .select("*")
    .where("username", "=", req.user.username);
    if (loggedinuser[0].role === "admin") {
    res.render("adminpanel", {
      layout: "main",
      name: req.user.username,
      quizid: quizid,
      appointments: appointmentrows
    });
  } else {
    res.render("loggedin", {
      layout: "main",
      name: req.user.username,
      quizid: quizid,
    });
  } 
  }
  else {
    res.render("loggedout", { layout: "main" });
  }
});

router.post(
  "/login/password",
  passport.authenticate("local", {
    successRedirect: "/",
    failureRedirect: "/login",
  }),
);

module.exports = router;
