// models/User.js
const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const User = sequelize.define("User", {
  
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
  }
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true, // Email should be unique for each user
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false, // Store hashed password
  },
  // role: {
  //   type: DataTypes.ENUM("user", "admin"),
  //   defaultValue: "user", // Default role is 'user', 'admin' can be assigned later
  // },
});

module.exports = User;
