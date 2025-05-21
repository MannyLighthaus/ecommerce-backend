// Import Sequelize and database connection
const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");
const User = require("./User");

// Define Order model
const Order = sequelize.define("Order", {
  // Order ID
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  // User ID (links to Users)
  userId: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  // Products (e.g., [{ productId: 1, quantity: 2 }])
  products: {
    type: DataTypes.JSON,
    allowNull: false,
  },
  // Total cost (e.g., 50.00)
  total: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  // Shipping info (e.g., { name, address })
  shipping: {
    type: DataTypes.JSON,
    allowNull: false,
  },
  // Status (e.g., Pending)
  status: {
    type: DataTypes.STRING,
    defaultValue: "Pending",
  },
});

// Export model
module.exports = Order;
