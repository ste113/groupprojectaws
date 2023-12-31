var express = require("express");
var router = express.Router();

const knex = require("knex")({
  client: "postgresql",
  connection: {
    host: process.env.host,
    port: process.env.port,
    user: process.env.username,
    password: process.env.password,
    ssl: { rejectUnauthorized: false },
  },
});

router.get("/quizzes/:id", async (req, res) => {
  let results = await knex(`${req.params.id}`).select("*");
  res.render("questions", {
    layout: "quiz",
    action: `/quizzes/${req.params.id}/results`,
    results: results,
  });
});

router.post("/quizzes/:id/results", async (req, res) => {
  let correctanswers = await knex(`${req.params.id}`).select("*");
  let useranswers = req.body;
  let results = correctanswers;
  let score = 0;
  results.map((e) => {
    try {
      if (
        e.correct_answer ===
        useranswers[results.indexOf(e)].toString().replaceAll("_", " ")
      ) {
        score += 1;
      }
    } catch (err) {
      console.log(err);
    }
  });

  res.render("answers", {
    useranswers: req.body,
    correctanswers: correctanswers,
    results: results,
    score: score,
  });
});

module.exports = router;
