FROM node:18.2-buster-slim

WORKDIR /usr/src/app

COPY . .
RUN chown -R node:node /usr/src/app

RUN npm install -g yarn
RUN yarn


EXPOSE 3000
CMD ["node", "app.js"]