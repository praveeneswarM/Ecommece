FROM node:alpine
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
WORKDIR /app/backend
EXPOSE 8000
CMD [ "node","/server.js" ]