const queryDB = require("./DB");
const args = process.argv.slice(2);
const sqlFile = args[args.indexOf("--sqlfile") + 1]

queryDB(sqlFile)
  .then((data) => console.log(data.rows))
  .catch((err) => console.log(err));