/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  await knex("student").del();
  await knex("student").insert([{ name: "steffan" }]);
};
