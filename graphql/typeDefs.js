const { gql } = require('apollo-server-express')

const typeDefs = gql`
    type Query {
        getAllUsers: [User]
        getUser(uuid: ID!): User
    }

    type Mutation {
        createUser(user: UserInput!): User
        updateUser(uuid: ID!, user: UserInput!): User
        deleteUser(uuid: ID!): User
    }

    type User {
        uuid: ID
        first_name: String
        last_name: String
        email: String
        ip_address: String
    }

    input UserInput {
        firstName: String
        lastName: String
        email: String
        ipAddress: String
    }
`

module.exports = typeDefs
