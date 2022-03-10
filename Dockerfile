FROM nginx:latest as build

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH 
COPY . ./

FROM nginx:stable-alpine as prod
COPY  --from=build ./ /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"]