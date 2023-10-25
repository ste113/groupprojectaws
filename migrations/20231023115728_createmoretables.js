/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = async function (knex) {
    await knex.schema.createTable("geography1", function (table) {
      table.text("question");
      table.text("choice_1");
      table.text("choice_2");
      table.text("choice_3");
        table.text("choice_4");
      table.text("correct_answer");
    })
    await knex.schema.createTable("generalknowledge1", function (table) {
      table.text("question");
      table.text("choice_1");
      table.text("choice_2");
      table.text("choice_3");
        table.text("choice_4");
      table.text("correct_answer");
    })
    await knex.schema.createTable("geography2", function (table) {
        table.text("question");
        table.text("choice_1");
        table.text("choice_2");
        table.text("choice_3");
        table.text("choice_4");
        table.text("correct_answer");
      })
    await knex.schema.createTable("numbers", function (table) {
        table.text("question");
        table.text("choice_1");
        table.text("choice_2");
        table.text("choice_3");
        table.text("choice_4");
        table.text("correct_answer");
      })
    await knex.schema.createTable("demographics", function (table) {
        table.text("question");
        table.text("choice_1");
        table.text("choice_2");
        table.text("choice_3");
        table.text("choice_4");
        table.text("correct_answer");
      })
    await knex.schema.createTable("science", function (table) {
        table.text("question");
        table.text("choice_1");
        table.text("choice_2");
        table.text("choice_3");
        table.text("choice_4");
        table.text("correct_answer");
      })
    await knex.schema.createTable("planets", function (table) {
        table.text("question");
        table.text("choice_1");
        table.text("choice_2");
        table.text("choice_3");
        table.text("choice_4");
        table.text("correct_answer");
      })
    await knex.schema.createTable("british_history", function (table) {
        table.text("question");
        table.text("choice_1");
        table.text("choice_2");
        table.text("choice_3");
        table.text("choice_4");
        table.text("correct_answer");
      })
  
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = async function (knex) {
 
    await knex.schema.dropTable("geography1")
    await knex.schema.dropTable("generalknowledge1")
    await knex.schema.dropTable("geography2")
    await knex.schema.dropTable("numbers")
    await knex.schema.dropTable("demographics")
    await knex.schema.dropTable("science")
    await knex.schema.dropTable("planets")
    await knex.schema.dropTable("british_history")
};
