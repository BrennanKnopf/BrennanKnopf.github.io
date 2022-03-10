# FROM node:16-bullseye as build

# WORKDIR /app

# COPY ./ ./

FROM nginx:stable-alpine as prod

COPY ./ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
