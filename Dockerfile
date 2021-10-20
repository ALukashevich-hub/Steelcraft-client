# этап сборки (build stage)
FROM node:lts-alpine as build-stage
WORKDIR /client
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# этап production (production-stage)
FROM nginx as production-stage
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY --from=build-stage /client/dist /usr/share/nginx/html
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]