FROM node:17-alpine

WORKDIR /workspace

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY src/ ./src/

CMD ["node", "src/index.js"]
