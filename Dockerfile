FROM node:22-bookworm-slim

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 9000

CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]
