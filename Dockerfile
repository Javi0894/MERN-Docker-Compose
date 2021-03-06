FROM node:latest

WORKDIR  /usr/src/docker_app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
