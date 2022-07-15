const queryDB = require("./DB");

queryDB("dropTables.sql")
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
