/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = async function (knex) {
  return knex.schema.createTable(
    "geography1",
    function (table) {
      table.text("question");
      table.text("choice_1");
      table.text("choice_2");
      table.text("correct_answer");
    }
  ),
  knex.schema.createTable("generalknowledge1", function (table) {
    table.text("question");
    table.text("choice_1");
    table.text("choice_2");
    table.text("correct_answer");
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = async function (knex) {
  return (
    knex.schema.dropTable("geography1"),
    knex.schema.dropTable("generalknowledge1")
  );
};
