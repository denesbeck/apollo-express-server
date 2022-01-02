require('dotenv').config()

const express = require('express')
const { ApolloServer } = require('apollo-server-express')

const typeDefs = require('./graphql/typeDefs')
const resolvers = require('./graphql/resolvers')

async function startApolloServer() {
    const app = express()
    const apolloServer = new ApolloServer({
        typeDefs,
        resolvers,
    })

    await apolloServer.start()

    apolloServer.applyMiddleware({ app: app })

    app.listen({ port: 4000 }, () => console.log(`🚀 Server ready at http://localhost:4000${apolloServer.graphqlPath}`))
}

startApolloServer()
