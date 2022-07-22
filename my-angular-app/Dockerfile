# stage 1
FROM node:latest as node
WORKDIR /app
RUN npm cache clean --force
COPY . ./app
COPY ./package.json .
RUN npm install
RUN npm update
RUN npm run build --prod
# stage 2
FROM nginx:alpine
COPY --from=node /app/dist/my-angular-app /usr/share/nginx/html
EXPOSE 4200
CMD ["ng","serve","--host", "0.0.0.0"]