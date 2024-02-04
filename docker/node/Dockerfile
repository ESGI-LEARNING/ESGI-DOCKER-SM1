FROM node:lts-slim as builder

WORKDIR /var/www

COPY . /var/www

RUN npm install

COPY . .

RUN npm run build

# Stage 2: Production Stage
FROM node:lts-slim

WORKDIR /var/www

COPY --from=builder /var/www .
COPY package*.json ./

CMD ["npm", "run", "dev"]
