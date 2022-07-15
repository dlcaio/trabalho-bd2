const { Pool } = require("pg");
const fs = require("fs");
const credentials = require("./dbCredentials");


const pool = new Pool({
  ...credentials,
  ssl: {
    rejectUnauthorized: false,
  },
});

const queryDB = async (queryFile) => {
  const client = await pool.connect();
  const queryString = fs.readFileSync(queryFile).toString();
  console.log(queryString);
  const res = await client.query(queryString);
  client.release();
  return res;
}

module.exports = queryDB;