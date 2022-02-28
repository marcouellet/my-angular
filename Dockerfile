FROM node:10 AS build
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:1.17.1-alpine
COPY --from=build /usr/src/app/dist/my-angular /usr/share/nginx/html
