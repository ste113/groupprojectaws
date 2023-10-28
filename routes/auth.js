var express = require("express");
var router = express.Router();
var passport = require("passport");
var LocalStrategy = require("passport-local");
var bcrypt = require("bcrypt");
require("dotenv").config();
var session = require("express-session");
var postgresstore = require("connect-pg-simple")(session);
const GoogleStrategy = require("passport-google-oauth2").Strategy;
const path = require("node:path");

const sessionStore = new postgresstore({
  conObject: {
    connectionString: `postgresql://${process.env.databaseendpoint}/postgres?user=${process.env.username}&password=${process.env.password}`,
    ssl: { rejectUnauthorized: false },
  },
});

router.use(
  session({
    secret: "keyboard cat",
    resave: false,
    saveUninitialized: false,
    store: sessionStore,
  }),
);

passport.use(
  new GoogleStrategy(
    {
      clientID: process.env.clientid,
      clientSecret: process.env.clientsecret,
      callbackURL: process.env.callbackurl,
      passReqToCallback: true,
    },
    function (request, accessToken, refreshToken, profile, done) {
      return done(null, profile);
    },
  ),
);
passport.serializeUser(function (user, cb) {
  process.nextTick(function () {
    return cb(null, user);
  });
});

passport.deserializeUser(function (obj, cb) {
  process.nextTick(function () {
    return cb(null, obj);
  });
});

router.use(passport.initialize());
router.use(passport.session());
router.use(express.static(path.join(__dirname, "public")));

const knex = require("knex")({
  client: "postgresql",
  connection: {
    host: process.env.host,
    port: process.env.port,
    user: process.env.username
    database: process.env.database,
    password: process.env.password,
    ssl: { rejectUnauthorized: false },
  },
});

router.use(passport.authenticate("session"));

router.get(
  "/auth/google",
  passport.authenticate("google", { scope: ["email", "profile"] }),
);

router.get(
  "/auth/google/callback",
  passport.authenticate("google", {
    successRedirect: "/",
    failureRedirect: "/login",
  }),
);

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
    } catch (err) {
      console.log(err);
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
  req.session.destroy(function (e) {
    req.logout();
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
  if (req.user !== undefined) {
    if (req.user.name !== undefined) {
      res.render("loggedin", {
        layout: "main",
        name: req.user.name.givenName,
        quizid: quizid,
      });
    } else {
      let loggedinuser = await knex("users")
        .select("*")
        .where("username", "=", req.user.username);
      if (loggedinuser[0].role === "admin") {
        res.render("adminpanel", {
          layout: "main",
          name: req.user.username,
          quizid: quizid,
          appointments: appointmentrows,
        });
      } else {
        res.render("loggedin", {
          layout: "main",
          name: req.user.username,
          quizid: quizid,
        });
      }
    }
  } else {
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

  if (req.user !== undefined) {
    if (req.user.name !== undefined) {
      res.render("loggedin", {
        layout: "main",
        name: req.user.name.getName,
        quizid: quizid,
      });
    } else {
      let loggedinuser = await knex("users")
        .select("*")
        .where("username", "=", req.user.username);
      if (loggedinuser[0].role === "admin") {
        res.render("adminpanel", {
          layout: "main",
          name: req.user.username,
          quizid: quizid,
          appointments: appointmentrows,
        });
      } else {
        res.render("loggedin", {
          layout: "main",
          name: req.user.username,
          quizid: quizid,
        });
      }
    }
  } else {
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
