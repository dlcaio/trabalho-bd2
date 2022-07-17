const queryDB = require("./DB");

queryDB("createTriggers.sql")
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
