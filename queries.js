const queryDB = require("./DB");

queryDB("queries.sql")
  .then((data) => console.log(data.rows))
  .catch((err) => console.log(err));
