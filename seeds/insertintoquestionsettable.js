/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  await knex("questionsets").del();
  await knex("questionsets").insert([
    { setname: "british_history", number_of_questions: 5, topic: "history" },
    { setname: "comparingsize", number_of_questions: 5, topic: "comparing" },
    { setname: "demographics", number_of_questions: 5, topic: "statistics" },
    {
      setname: "generalknowledge1",
      number_of_questions: 5,
      topic: "general knowledge",
    },
    { setname: "geography1", number_of_questions: 5, topic: "geography" },
    { setname: "geography2", number_of_questions: 5, topic: "geography" },
    { setname: "history", number_of_questions: 5, topic: "history" },
    { setname: "numbers", number_of_questions: 5, topic: "numbers" },
    { setname: "planets", number_of_questions: 5, topic: "planets" },
    { setname: "science", number_of_questions: 5, topic: "science" },
  ]);
};
