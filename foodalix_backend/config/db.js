const mongoose = require('mongoose');

const uri = "mongodb+srv://umermujtaba16:rENpcbuyNwFzn2wj@cluster0.nx3zugt.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

async function connectDB() {
  try {
    await mongoose.connect(uri);
    console.log("Successfully connected to MongoDB!");
  } catch (error) {
    console.error("Error connecting to MongoDB:", error);
    process.exit(1);
  }
}

connectDB();

module.exports = mongoose;
