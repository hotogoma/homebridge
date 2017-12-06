FROM arm32v6/node:8-alpine

WORKDIR /app
ADD . /app

RUN apk add --no-cache --virtual .gyp python make g++ \
    && apk add --no-cache avahi-dev \
    && npm install \
    && mv node_modules / \
    && apk del .gyp

CMD ["npm", "start"]
