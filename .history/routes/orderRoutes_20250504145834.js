// Import Express
const express = require("express");
// Create router
const router = express.Router();
// Import controller
const { createOrder } = require("../controllers/orderController");
// Import auth middleware
const auth = require("../middleware/auth");

// POST /api/orders
router.post("/orders", auth, createOrder);

// Export router
module.exports = router;
