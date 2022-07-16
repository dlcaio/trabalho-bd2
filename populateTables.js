const queryDB = require("./DB");

queryDB("populateTables.sql")
  .then((data) => console.log(data.rows))
  .catch((err) => console.log(err));
