// Import Order model
const Order = require("../models/Order");

// Create order
const createOrder = async (req, res) => {
  // Get products from body (array of { productId, price, quantity })
  const { products } = req.body;
  try {
    // Validate products array
    if (!products || !Array.isArray(products) || products.length === 0) {
      return res.status(400).json({ message: "Products array is required" });
    }
    // Validate each product cost
    for (const item of products) {
      if (!item.productId || !item.price || !item.quantity) {
        return res
          .status(400)
          .json({ message: "Each product needs productId, price, quantity" });
      }
      if (typeof item.price !== "number" || item.price <= 0) {
        return res
          .status(400)
          .json({ message: "Price must be a positive number" });
      }
      if (!Number.isInteger(item.quantity) || item.quantity <= 0) {
        return res
          .status(400)
          .json({ message: "Quantity must be a positive integer" });
      }
    }
    // Calculate subtotal for each product and total
    const productsWithSubtotal = products.map((item) => ({
      productId: item.productId,
      price: item.price,
      quantity: item.quantity,
      subtotal: item.price * item.quantity,
    }));
    const total = productsWithSubtotal.reduce(
      (sum, item) => sum + item.subtotal,
      0
    );
    // Save order with user ID from JWT
    const order = await Order.create({
      userId: req.user.id, // From auth middleware
      products: productsWithSubtotal,
      total,
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
