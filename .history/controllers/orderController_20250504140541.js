module.exports = router;

// Import Order model
const Order = require("../models/Order");

// Create order function
const createOrder = async (req, res) => {
  // Get data from request body
  const { products, total, shipping } = req.body;
  try {
    // Create order with user ID from JWT
    const order = await Order.create({
      userId: req.user.id, // From auth middleware
      products,
      total,
      shipping,
      status: "Pending",
    });
    // Send success response
    res.json({ message: "Order created", order });
  } catch (error) {
    // Handle errors
    res.status(500).json({ message: "Server error" });
  }
};

// Export function
module.exports = { createOrder };
