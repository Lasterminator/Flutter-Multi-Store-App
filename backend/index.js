const express = require("express");
const helloRoute = require("./routes/hello");
const mongoose = require("mongoose");
require('dotenv').config();

const app = express();
const PORT = process.env.PORT
const DB = process.env.MONGODBURI;

app.use(helloRoute);

mongoose.connect(DB).then(()=>{
    console.log('Mongodb Connected')
})

app.listen(PORT, "0.0.0.0", function () {
  console.log(`server running on ${PORT}`);
});
