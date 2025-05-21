// Import Express router
const express = require("express");
// Create router
const router = express.Router();
// Import order controller
const { createOrder } = require("../controllers/orderController");
// Import auth middleware
const auth = require("../middleware/auth");

// POST /api/orders - Create order (protected)
router.post("/", auth, createOrder);

// Export router
module.exports = router;
