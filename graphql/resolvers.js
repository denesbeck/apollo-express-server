const pool = require('../middleware/pg')

const resolvers = {
    Query: {
        getUser: async (parent, { uuid }, context, info) => {
            const res = await pool.query(
                'SELECT uuid, first_name, last_name, email, ip_address FROM public.users WHERE uuid = $1;',
                [uuid]
            )
            return res.rows[0]
        },
        getAllUsers: async () => {
            const res = await pool.query('SELECT uuid, first_name, last_name, email, ip_address FROM public.users;')
            return res.rows
        },
    },
    Mutation: {
        createUser: async (parent, { user }, context, info) => {
            const { firstName, lastName, email, ipAddress } = user
            const res = await pool.query(
                'INSERT INTO public.users (first_name, last_name, email, ip_address) VALUES ($1, $2, $3, $4) RETURNING *;',
                [firstName, lastName, email, ipAddress]
            )
            return res.rows[0]
        },
        updateUser: async (parent, { uuid, user }, context, info) => {
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
            const res = await pool.query(
                `UPDATE public.users SET ${tempArr.join(', ')} WHERE uuid = $${tempArr.length + 1} RETURNING *;`,
                [...Object.values(user), uuid]
            )
            return res.rows[0]
        },
        deleteUser: async (parent, { uuid }, context, info) => {
            const res = await pool.query('DELETE FROM public.users WHERE uuid = $1 RETURNING *;', [uuid])
            return res.rows[0]
        },
    },
}

module.exports = resolvers
