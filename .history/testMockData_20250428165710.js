const axios = require("axios"); // Use axios for making HTTP requests

// URL of your mock data (replace with actual fake API URL)
const fakeApiUrl = "https://fakeapi.com/products";

// Your backend API endpoint
const backendApiUrl = "http://localhost:5000/api/products";

// Fetch mock data from fake API
axios
  .get(fakeApiUrl)
  .then((response) => {
    const products = response.data;

    // Iterate over mock products and send them to your backend
    products.forEach((product) => {
      axios
        .post(backendApiUrl, {
          title: product.title,
          price: product.price,
          description: product.description,
          category: product.category,
          image: product.image,
          rating_rate: product.rating_rate,
          rating_count: product.rating_count,
        })
        .then(() => {
          console.log("Product added successfully");
        })
        .catch((err) => {
          console.error("Error adding product:", err);
        });
    });
  })
  .catch((err) => {
    console.error("Error fetching mock data:", err);
  });
