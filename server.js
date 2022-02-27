"use strict";

const express = require("express");

// Constants
const PORT = 3000;

// App
const app = express();
app.use(express.static(__dirname + "/dist/my-angular"));
app.get("/*", function (req, res) {
  res.sendFile(path.join(__dirname + "/dist/my-angular/index.html"));
});
var port = process.env.PORT || PORT;
app.listen(port);
