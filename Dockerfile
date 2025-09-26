FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 3000

# CMD ["npm", "start"]

CMD ["sh", "-c","PORT=3001 npm start"]