// Defines how a "Product" looks in the database (name, price, description, etc.).
// # Sequelize model for Product

// models/Product.js
const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Product = sequelize.define("Product", {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  title: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  price: {
    type: DataTypes.FLOAT, // used float as it might contain decimal
    allowNull: false,
  },
  description: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  category: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  image: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  rating_rate: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  rating_count: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  {
    tableName: 'products', // Matches your table name in PostgreSQL
    schema: 'public', // Matches your schema (default is 'public')
    timestamps: false, // Set to true if you want createdAt/updatedAt columns
  });
  },
});

module.exports = Product;
