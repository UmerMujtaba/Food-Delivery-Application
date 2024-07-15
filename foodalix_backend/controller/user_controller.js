const UserService = require("../services/user_service");

exports.register = async (req, res) => {
  try {
    const { email, password } = req.body;
    const registeredUser = await UserService.registerUser(email, password);
    res.json({
      status: true,
      success: "User Registered Successfully",
      user: registeredUser,
    });
  } catch (err) {
    console.error("Error registering user:", err);
    res.status(500).json({ status: false, error: "Failed to register user" });
  }
};

exports.login = async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await UserService.checkUser(email);
    if (!user) {
      throw new Error("User doesn't exist");
    }

    const isMatch = await user.comparePassword(password);
    if (!isMatch) {
      throw new Error("Invalid credentials");
    }

    let tokenData = { _id: user._id, email: user.email };
    const token = await UserService.generateToken(tokenData, "secretKey", '1h');
    
    res.status(200).json({ status: true, token: token });
  } catch (err) {
    console.error("Error logging in user:", err);
    res.status(500).json({ status: false, error: "Failed to login user" });
  }
};
