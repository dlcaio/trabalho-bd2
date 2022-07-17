const queryDB = require("./DB");

queryDB("createIndexes.sql")
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
