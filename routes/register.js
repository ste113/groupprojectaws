var express = require("express");
var router = express.Router();
var bcrypt = require("bcrypt");

const knex = require("knex")({
  client: "postgresql",
  connection: {
    database: "quiz",
    user: "postgres",
    password: "postgres",
  },
});

router.get("/register", (req, res) => {
  res.render("register", { layout: "main" });
});

router.post("/register", async (req, res) => {
  let hashedPassword = await bcrypt.hash(req.body.password, 10);
  let user = await knex("users")
    .select("*")
    .where("username", "=", req.body.username);
  try {
    if (typeof user[0] == 'undefined') {
      await knex('users').insert({role: 'student', username: req.body.username, password: hashedPassword})
      res.redirect('/login');
    } else {
      res.render("register", {
        layout: "main",
        message: "Account already exists!",
      });
    }
  } catch (err) {
    console.log(err);
  }
});

module.exports = router;
