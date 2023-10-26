/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex("history").del();
  await knex("history").insert([
    {
      question: "Did the Germans ever capture Moscow",
      choice_1: "Yes",
      choice_2: "No",
      correct_answer: "No",
    },
    {
      question: "How did Hitler die?",
      choice_1: "Suicide",
      choice_2: "Shot by the Russians",
      choice_3: "Hanged after the trials of Nuremberg",
      choice_4: "No one knows",
      correct_answer: "Suicide",
    },
    {
      question: "Which of these countries did not fight in WWII?",
      choice_1: "Finland",
      choice_2: "Greece",
      choice_3: "Ireland",
      choice_4: "Italy",
      correct_answer: "Ireland",
    },
    {
      question:
        "What was the name of the American effort to build an atomic bomb?",
      choice_1: "The Baltimore Project",
      choice_2: "The chicago project",
      choice_3: "The Manhattan Project",
      choice_4: "The Philadelphia project",
      correct_answer: "The Philadelphia project",
    },
    {
      question:
        "About 70 million people died as a result of WWII. What percent of these people were from the United States?",
      choice_1: "0.6 percent",
      choice_2: "5.6 percent",
      choice_3: "15.6 percent",
      choice_4: "30.6 percent",
      correct_answer: "0.6 percent",
    },
  ]);
  await knex("history")
    .where("correct_answer", "=", "0.6%")
    .update({ correct_answer: "0.6 percent" });
};
