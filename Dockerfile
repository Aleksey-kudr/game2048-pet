FROM node:16.20.2-slim

RUN mkdir -p /opt/game2048/node_modules && chown -R node:node /opt/game2048

WORKDIR /opt/game2048/

COPY --chown=node:node ./2048-game/ .

RUN npm install --include=dev && npm run build

EXPOSE 8080

CMD npm start


FROM nginx

COPY ./nginx/game2048.conf /etc/nginx/conf.d/default.conf
