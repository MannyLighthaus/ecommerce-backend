const User = require("../models/User");

const signup = async (req, res) => {
  try {
    const { email, password, name } = req.body;
    if (!email || !password || !name) {
      return res
        .status(400)
        .json({ message: "Missing email, password, or name" });
    }
    const existingUser = await User.findOne({ where: { email } });
    if (existingUser) {
      return res.status(400).json({ message: "Email already exists" });
    }
    const user = await User.create({ email, password, name });
    return res
      .status(201)
      .json({ message: "User created", user: { id: user.id, email, name } });
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
    return res
      .status(200)
      .json({
        message: "Logged in",
        user: { id: user.id, email, name: user.name },
      });
  } catch (error) {
    console.error("Error logging in:", error);
    return res.status(500).json({ message: "Server error" });
  }
};

module.exports = { signup, login };
