const queryDB = require("./DB");

queryDB("createTables.sql")
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
