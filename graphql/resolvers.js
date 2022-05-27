const pool = require('../connection/pg')
const randomUserData = require('../data/randomUsers.json')

const resolvers = {
    Query: {
        get15RandomUsers: () => {
            return randomUserData.users
        },
        getAllUsers: async () => {
            try {
                const { rows } = await pool.query('SELECT uuid, first_name, last_name, email, ip_address FROM public.users;')
                return rows
            } catch (err) {
                console.log('Something went wrong: ' + err)
            }
        },
        getUser: async (_parent, { uuid }, _context, _info) => {
            try {
                const { rows } = await pool.query(
                    'SELECT uuid, first_name, last_name, email, ip_address FROM public.users WHERE uuid = $1;',
                    [uuid]
                )
                return rows[0]
            } catch (err) {
                console.log('Something went wrong: ' + err)
            }
        },
    },
    Mutation: {
        createUser: async (_parent, { user }, _context, _info) => {
            const { firstName, lastName, email, ipAddress } = user
            try {
                const { rows } = await pool.query(
                    'INSERT INTO public.users (first_name, last_name, email, ip_address) VALUES ($1, $2, $3, $4) RETURNING *;',
                    [firstName, lastName, email, ipAddress]
                )
                return rows[0]
            } catch (err) {
                console.log('Something went wrong: ' + err)
            }
        },
        updateUser: async (_parent, { uuid, user }, _context, _info) => {
            const tempArr = []
            for (const prop in user) {
                switch (prop) {
                    case 'firstName':
                        tempArr.push(`first_name = $${tempArr.length + 1}`)
                        break
                    case 'lastName':
                        tempArr.push(`last_name = $${tempArr.length + 1}`)
                        break
                    case 'email':
                        tempArr.push(`email = $${tempArr.length + 1}`)
                        break
                    case 'ipAddress':
                        tempArr.push(`ip_address = $${tempArr.length + 1}`)
                        break
                    default:
                        return
                }
            }
            try {
                const { rows } = await pool.query(
                    `UPDATE public.users SET ${tempArr.join(', ')} WHERE uuid = $${tempArr.length + 1} RETURNING *;`,
                    [...Object.values(user), uuid]
                )
                return rows[0]
            } catch (err) {
                console.log('Something went wrong: ' + err)
            }
        },
        deleteUser: async (_parent, { uuid }, _context, _info) => {
            try {
                const { rows } = await pool.query('DELETE FROM public.users WHERE uuid = $1 RETURNING *;', [uuid])
                return rows[0]
            } catch (err) {
                console.log('Something went wrong: ' + err)
            }
        },
    },
}

module.exports = resolvers
