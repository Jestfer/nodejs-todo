FROM node:12-alpine
ENV NODE_ENV=production
WORKDIR /home/node/app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]
