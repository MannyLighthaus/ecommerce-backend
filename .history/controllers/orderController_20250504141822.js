// Import Order model
const Order = require("../models/Order");

// Create order
const createOrder = async (req, res) => {
  // Get data from body
  const { products, total, shipping } = req.body;
  try {
    // Save order with user ID from JWT
    const order = await Order.create({
      userId: req.user.id, // From auth middleware
      products,
      total,
      shipping,
      status: "Pending",
    });
    // Send response
    res.json({ message: "Order created", order });
  } catch (error) {
    // Handle error
    res.status(500).json({ message: "Error creating order" });
  }
};

// Export
module.exports = { createOrder };
