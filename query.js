const queryDB = require("./DB");
const args = process.argv.slice(2);
const sqlFile = args[args.indexOf("--sqlfile") + 1]
const rows = args.includes("--rows")

queryDB(sqlFile)
  .then((data) => console.log(rows ? data.rows : data))
  .catch((err) => console.log(err));