FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./

RUN npm install --production
COPY . .
RUN npm run build

FROM nginx:stable-alpine as production-stage
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]
