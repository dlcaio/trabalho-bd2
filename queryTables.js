const queryDB = require("./DB");

queryDB("queryTables.sql")
  .then((data) => console.log(data.rows))
  .catch((err) => console.log(err));
