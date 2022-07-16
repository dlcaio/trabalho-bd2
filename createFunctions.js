const queryDB = require("./DB");

queryDB("createFunctions.sql")
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
