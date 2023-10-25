/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> } 
 */
 exports.seed = async function(knex) {
  await knex("comparingsize").del();
  await knex("comparingsize").insert([{question: "Earth or Mars", choice_1: "Earth", choice_2: "Mars", correct_answer: "Earth"}, {question: "Africa or South America", choice_1: "Africa", choice_2: "South America", correct_answer: "South America"}, {question: " The Old Testament or the New Testament, by length", choice_1: "Old Testament", choice_2: "New Testament", correct_answer : "Old Testament"}, {question: "The heaviest human ever or the heaviest pumpkin ever", choice_1: "Human", choice_2: "Pumpkin", correct_answer: "Pumpkin"}, {question: " The annual budget of the French government or the annual revenue of Google.", choice_1: "France", choice_2: "Google", correct_answer: "France"}])
  await knex("comparingsize").where('correct_answer', '=', 'South America').update({correct_answer: "Africa"})
};