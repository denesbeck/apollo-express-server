const { gql } = require('apollo-server-express')

const typeDefs = gql`
    type Query {
        get15RandomUsers: [RandomUser]
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

    type RandomUser {
        gender: String
        name: Name
        location: Location
        email: String
        phone: String
        picture: Picture
    }

    type Name {
        title: String
        first: String
        last: String
    }
    type Location {
        street: Street
        city: String
        state: String
        country: String
        postcode: Int
    }
    type Street {
        number: Int
        name: String
    }
    type Picture {
        medium: String
    }
`

module.exports = typeDefs
