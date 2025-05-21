// Defines the API endpoints like GET /products, POST /products. (Handles URL paths.)

const express = require("express");
const productController = require("../controllers/productController"); // Import the controller

const router = express.Router();

// Define routes for CRUD operations
router.post("/api/products", productController.createProduct); // Create a new product
router.get("/api/products", productController.getAllProducts); // Get all products
router.get("/api/products/:id", productController.getProductById); // Get a product by ID
router.put("/api/products/:id", productController.updateProduct); // Update a product by ID
router.delete("/api/products/:id", productController.deleteProduct); // Delete a product by ID

module.exports = router;
