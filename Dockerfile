FROM arm32v6/node:8-alpine

WORKDIR /app
ADD . /app

RUN npm install && mv node_modules /

CMD ["npm", "start"]
