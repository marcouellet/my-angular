# stage 1
FROM node:13.14.0 as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm install -g @angular/cli@6.0.8
###RUN npm run build --prod
CMD ng serve --host 0.0.0.0
# stage 2
###FROM nginx:alpine
###COPY --from=node /app/dist/angular-app /usr/share/nginx/html
