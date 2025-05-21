// Database connection file.
// connect Node.js to your database (PostgreSQL).

const { Sequelize } = require("sequelize");
require("dotenv").config(); // To load environment variables from .env

const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: "postgres",
  }
);

module.exports = sequelize;
