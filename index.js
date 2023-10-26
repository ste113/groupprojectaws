const express = require("express");
let passport = require("passport");
let app = express();
const path = require("node:path");
const exphbs = require("exphbs");
var bodyParser = require("body-parser");
var authRouter = require("./routes/auth");
var registerRouter = require("./routes/register");
var session = require("express-session");
var postgresstore = require("connect-pg-simple")(session);
require("dotenv").config();

app.use(bodyParser.json()); // to support JSON bodies
app.use(bodyParser.urlencoded({ extended: true }));

const knex = require("knex")({
  client: "postgresql",
  connection: {
    database: process.env.DATABASE_NAME,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
  },
});

const sessionStore = new postgresstore({
  conString: "postgresql://localhost/quiz?user=postgres&password=postgres",
});

app.use(express.static(path.join(__dirname, "public")));
app.use(
  session({
    secret: "keyboard cat",
    resave: false,
    saveUninitialized: false,
    store: sessionStore,
  }),
);
app.use(passport.authenticate("session"));

app.engine("hbs", exphbs.create());
app.set("view engine", "hbs");

app.use("/", authRouter);
app.use("/", registerRouter);

app.get("/quizzes/:id", async (req, res) => {
  let results = await knex(`${req.params.id}`).select("*");
  res.render("questions", {
    layout: "quiz",
    action: `/quizzes/${req.params.id}/results`,
    results: results,
  });
});

app.post("/quizzes/:id/results", async (req, res) => {
  let correctanswers = await knex(`${req.params.id}`).select("*");
  let useranswers = req.body;
  let results = correctanswers;
  let score = 0;
  results.map((e) => {
    try{
      if (
        e.correct_answer ===
        useranswers[results.indexOf(e)].toString().replaceAll("_", " ")
      ) {
        score += 1;
      }
    }catch(err){
      console.log(err)
    }
   
  });

  res.render("answers", {
    useranswers: req.body,
    correctanswers: correctanswers,
    results: results,
    score: score,
  });
});

app.listen(8080);
