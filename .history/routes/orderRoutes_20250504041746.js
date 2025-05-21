const express = require("express");
const orderController = require("../controllers/orderController"); // Import the controller

const router = express.Router();

// Define routes for CRUD operations
router.post("/products", productController.createProduct); // Create a new product
router.get("/products", productController.getAllProducts); // Get all products
router.get("/products/:id", productController.getProductById); // Get a product by ID
router.put("/products/:id", productController.updateProduct); // Update a product by ID
router.delete("/products/:id", productController.deleteProduct); // Delete a product by ID

module.exports = router;
