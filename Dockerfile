FROM node:10 AS build
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:latest
COPY --from=build /usr/src/app/dist/my-angular /usr/share/nginx/html
