FROM node:argon

ARG http_proxy
ARG https_proxy

# Create app directory
RUN mkdir -p /usr/src/hellowordapp
WORKDIR /usr/src/hellowordapp


COPY package.json /usr/src/hellowordapp/
COPY . /usr/src/hellowordapp
RUN npm install

EXPOSE 3000

CMD [ "node", "app.js" ]
