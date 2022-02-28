# stage 1
FROM node:13.14.0 as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm install -g @angular/cli@6.0.8
RUN npm run build
EXPOSE 3000
CMD ["node", "server.js"]

