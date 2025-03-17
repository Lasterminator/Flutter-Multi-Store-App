const express = require("express");
const User = require("../models/user");
const bcrypt = require("bcryptjs");
const authRouter = express.Router();
const jwt = require("jsonwebtoken");

// sign up
authRouter.post("/api/signup", async (req, res) => {
  try {
    const { fullName, email, password } = req.body;

    const existingEmail = await User.findOne({ email });
    if (existingEmail) {
      return res.status(400).json({ msg: "user with same email exists" });
    } else {
      // Generate a salt with cost factor of 10
      const salt = await bcrypt.genSalt(10);
      // Hash pwd
      const hashedPassword = await bcrypt.hash(password, salt);
      let user = new User({ fullName, email, password: hashedPassword });
      user = await user.save();
      res.json({ user });
    }
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// sign in
authRouter.post("/api/signin", async (req, res) => {
  try {
    const { email, password } = req.body;
    const findUser = await User.findOne({ email });

    if (!findUser) {
      return res.status(400).json({ msg: "No user with this email exists" });
    }
    const isMatch = await bcrypt.compare(password, findUser.password);
    if (!isMatch) {
      return res.status(400).json({ msg: "Password is incorrect" });
    }
    const token = jwt.sign({ id: findUser._id }, "passwordKey");

    // Remove password before sending response
    const { password: _, ...UserWithoutPassword } = findUser._doc;
    res.json({ token, ...UserWithoutPassword });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = authRouter;
