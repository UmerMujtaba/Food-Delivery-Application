const UserModel = require("../model/user_model");
const jwt = require("jsonwebtoken");

class UserService {
  static async registerUser(email, password) {
    try {
      const newUser = new UserModel({ email, password });
      return await newUser.save();
    } catch (err) {
      throw err;
    }
  }

  static async checkUser(email) {
    try {
      return await UserModel.findOne({ email });
    } catch (error) {
      throw error;
    }
  }

  static async generateToken(tokenData, secretKey, jwt_expire) {
    return jwt.sign(tokenData, secretKey, { expiresIn: jwt_expire });
  }
}

module.exports = UserService;
