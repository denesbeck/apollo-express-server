const { Pool } = require('pg')

const pg_host = process.env.PG_HOST
const pg_database = process.env.PG_DATABASE
const pg_port = process.env.PG_PORT
const pg_user = process.env.PG_USER
const pg_password = process.env.PG_PASSWORD

const pool = new Pool({
    host: pg_host,
    database: pg_database,
    port: pg_port,
    user: pg_user,
    password: pg_password,
})

module.exports = pool
