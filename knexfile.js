// Update with your config settings.

/**
 * @type { Object.<string, import("knex").Knex.Config> }
 */

require("dotenv").config();

module.exports = {
  development: {
    client: "postgresql",
	   connection: {
        host: 'database-1.cwv7hjmhrcqi.ap-southeast-2.rds.amazonaws.com',
          port: '5432',
    user: `${process.env.username}`,
          database:`${process.env.database}`,
    password: `${process.env.password}`,
        ssl:  { rejectUnauthorized: false }
  },

         },
  },

  staging: {
    client: "postgresql",
    connection: {
      database: "my_db",
      user: "username",
      password: "password",
    },
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "knex_migrations",
    },
  },

  production: {
    client: "postgresql",
    connection: {
      database: "my_db",
      user: "username",
      password: "password",
    },
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "knex_migrations",
    },
  },
};
