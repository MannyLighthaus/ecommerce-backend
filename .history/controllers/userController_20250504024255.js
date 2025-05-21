const User = require("../models/User");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

const signup = async (req, res) => {
  try {
    const { email, password, name } = req.body;

    //request validation
    if (!email || !password || !name) {
      return res
        .status(400)
        .json({ message: "Missing email, password, or name" });
    }
    // if the user is trying to sign up with an exixting email
    const existingUser = await User.findOne({ where: { email } });
    if (existingUser) {
      return res.status(400).json({ message: "Email already exists" });
    }

    //creating a new user

    //using the password(plain texts) from the req.body, and hash it
    const hashedPassword = await bcrypt.hash(password, 10); // Hash password
    const user = await User.create({ email, password: hashedPassword, name }); // Use hashed password as new password
    const token = jwt.sign({ id: user.id }, process.env.JWT_SECRET, {
      expiresIn: "1h",
    }); // Generate token
    return res.status(201).json({
      message: "User created",
      token,
      user: { id: user.id, email, name },
    }); // Add token
  } catch (error) {
    console.error("Error signing up:", error);
    return res.status(500).json({ message: "Server error" });
  }
};

const login = async (req, res) => {
  try {
    const { email, password } = req.body;
    if (!email || !password) {
      return res.status(400).json({ message: "Missing email or password" });
    }
    const user = await User.findOne({ where: { email } });
    if (!user || user.password !== password) {
      return res.status(400).json({ message: "Invalid email or password" });
    }
    return res.status(200).json({
      message: "Logged in",
      user: { id: user.id, email, name: user.name },
    });
  } catch (error) {
    console.error("Error logging in:", error);
    return res.status(500).json({ message: "Server error" });
  }
};

module.exports = { signup, login };
