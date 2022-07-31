# Apollo Express Server

## Table of Contents

-   [About](#about)
-   [Getting Started](#getting_started)
-   [Usage](#usage)
-   [Built Using](#built_using)

## About <a name = "about"></a>

This is an example GraphQL server app using [Apollo Server Express](https://www.npmjs.com/package/apollo-server-express) package.

## Getting Started <a name = "getting_started"></a>

### Prerequisites

Install [Node.js](https://nodejs.org/en/).

Create a .env file in the project's root folder with the following content:

```
PG_HOST=
PG_PORT=
PG_DB=
PG_USER=
PG_PASSWORD=
```

You can set your development database using [Docker](https://www.docker.com/) (see instructions [here](https://gist.github.com/denesbeck/30f641f7a155df989ecc69fd02316a73)).

### Installing

Install dependencies:

```
npm install
```

### Available Scripts

```
npm start
```

Starts the server.

### Running with Docker Compose

```
docker-compose up -d
```

Execute the above command in the root folder of this project. This will launch the GraphQL server with a PostgreSQL database ([incl. sample data](/data/randomUsers.json)) and a pgAdmin service. [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installation is a prerequisite. Get the PostgreSQL and pgAdmin credentials from [docker-compose.yml](docker-compose.yml) file.

## Usage <a name = "usage"></a>

Explore the graphs using [Apollo Studio](http://localhost:4000/graphql).

## Built Using <a name = "built_using"></a>

-   [PostgreSQL](https://www.postgresql.org/) - Database
-   [Express](https://expressjs.com/) - Server Framework
-   [NodeJs](https://nodejs.org/en/) - Server Environment
-   [Apollo Server](https://www.apollographql.com/docs/apollo-server/) - GraphQL Server
