FROM node

WORKDIR /usr/src/app/react_app

COPY ./react_app/package*.json ./

RUN npm install
RUN apt-get update
RUN apt-get -y install vim

COPY ./react_app ./

EXPOSE 3000

CMD ["npm", "start"]

