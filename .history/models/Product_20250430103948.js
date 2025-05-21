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
    allowNull: true,
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
    allowNull: true,
  },
  rating_count: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
  { 
    tableName: "products",
    schema: "public",
    timestamps: false,
  },
);

module.exports = Product;
