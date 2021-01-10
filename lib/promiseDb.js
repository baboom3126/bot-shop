const mysql = require('mysql')
const pool = mysql.createPool({
    host: process.env.MYSQL_IP_DEV,
    user: process.env.MYSQL_USER_DEV,
    password: process.env.MYSQL_PASSWORD_DEV,
    database: process.env.MYSQL_DATABASE_DEV,
    charset : 'utf8mb4'
})

let promiseDb = function (sql, values) {
    return new Promise((resolve, reject) => {
        pool.getConnection(function (err, connection) {
            if (err) {
                reject(err)
            } else {
                connection.query(sql, values, (err, rows) => {
                    // console.log(`[INFO] Query sql : ${sql}`)
                    if (err) {
                        console.log(`[ERROR] sql : ${sql}, values : ${values}`)
                        reject(err)
                    } else {
                        // console.log(`[INFO] Query successfully, rows `)
                        resolve(rows)
                    }
                    connection.release()
                })
            }
        })
    })
}

module.exports = {promiseDb}