FROM node:16-alpine
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN npm install --quiet
COPY app .
EXPOSE 3000
CMD [ "node", "server.js" ]