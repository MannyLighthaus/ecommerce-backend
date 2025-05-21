const express = require("express");
const cors = require("cors");
const dotenv = require("dotenv");

// Load environment variables from .env
dotenv.config();

// Initialize express app
const app = express();

// Middlewares
app.use(cors()); // Allow Cross-Origin Requests
app.use(express.json()); // Parse incoming JSON requests

//  Test route
app.get("/", (req, res) => {
  res.send("E-Commerce API is running...");
});

// Start the server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
