/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = async function (knex) {
    return (
      knex.schema.createTable("appointments", function (table) {
        table.text("time");
        table.text("name");
      })
    );
  };
  
  /**
   * @param { import("knex").Knex } knex
   * @returns { Promise<void> }
   */
  exports.down = async function (knex) {
    return (
      knex.schema.dropTable("appointments")
    );
  };