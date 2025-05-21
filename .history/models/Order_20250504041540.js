// Import Sequelize DataTypes and database connection
const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");
const User = require("./User");

// Define Order model
const Order = sequelize.define("Order", {
  // Unique ID for the order
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  // User ID (links to Users table)
  userId: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: User,
      key: "id",
    },
  },
  // Array of products (e.g., [{ productId: 1, quantity: 2 }])
  products: {
    type: DataTypes.JSON,
    allowNull: false,
  },
  // Total order amount (e.g., 199.98)
  total: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  // Shipping details (e.g., { name, email, address })
  shipping: {
    type: DataTypes.JSON,
    allowNull: false,
  },
  // Order status (e.g., Pending, Shipped)
  status: {
    type: DataTypes.STRING,
    allowNull: false,
    defaultValue: "Pending",
  },

  // Creation timestamp
  createdAt: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW,
  },
  // Update timestamp
  updatedAt: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW,
  },
});

// Export Order model
module.exports = Order;
