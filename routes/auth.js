var express = require("express");
var router = express.Router();
var passport = require("passport");
var LocalStrategy = require("passport-local");
var bcrypt = require("bcrypt");
require('dotenv').config()
const knex = require("knex")({
  client: "postgresql",
  connection: {
    database: process.env.DATABASE_NAME,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
  },
});

passport.use(
  new LocalStrategy(async function verify(username, password, cb) {
    let selected = await knex("users")
      .select("*")
      .where("username", "=", username);
    let row = selected[0];

    if (!row) {
      return cb(null, false, { message: "No user with that username!" });
    }

    try {
      if (await bcrypt.compare(password, row.password)) {
        return cb(null, row);
      } else {
        return cb(null, false, { message: "Passoword Incorrect!" });
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

router.get("/", async(req, res) => {
  
  let array = await knex("questionsets").select('*');
  let quizid = array[Math.floor(Math.random() * array.length)].setname;
  if (req.user !== undefined) {
    res.render("loggedin", { layout: "main", name: req.user.username, quizid: quizid});
  } else {
    res.render("loggedout", { layout: "main" });
  }
}); //

router.post(
  "/login/password",
  passport.authenticate("local", {
    successRedirect: "/",
    failureFlash: true,
    failureRedirect: "/login",
  }),
);

module.exports = router;
