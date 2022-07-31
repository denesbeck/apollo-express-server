FROM node:16-slim AS builder
WORKDIR /app
COPY package*.json .
RUN npm install

FROM node:16 AS runner
WORKDIR /app
COPY . .
COPY --from=builder /app/node_modules /node_modules
COPY --from=builder /app/package*.json .
CMD ["npm", "start"]