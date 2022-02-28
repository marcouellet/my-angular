# stage 1
FROM node:13.14.0 as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm install -g @angular/cli@6.0.8

CMD ng serve --host 0.0.0.0
EXPOSE 3000
