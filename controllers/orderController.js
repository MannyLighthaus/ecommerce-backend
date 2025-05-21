// Import the Order model
const Order = require("../models/Order");

// Create a new order
const createOrder = async (req, res) => {
  try {
    // Get the order data from the request body
    const { userId, products, total } = req.body;

    // Make sure required fields are present
    if (!userId || !products || !total) {
      return res
        .status(400)
        .json({ message: "userId, products, and total are required" });
    }

    // Create and save the new order(JSON array of items)
    const newOrder = await Order.create({
      userId,
      products,
      total,
    });

    // Respond with success and the created order
    res.status(201).json({
      message: "Order created successfully",
      order: newOrder,
    });
  } catch (error) {
    console.error("Error creating order:", error);
    res.status(500).json({ message: "Internal server error" });
  }
};

// Export the controller
module.exports = { createOrder };
