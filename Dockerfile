FROM node:16-alpine
WORKDIR /app/products
COPY package.json package-lock.json ./
RUN npm install --location=global nodemon --save-dev
RUN npm install
COPY . .
EXPOSE 2424
CMD ["node", "index.js"]
