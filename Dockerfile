FROM node:argon

ARG http_proxy
ARG https_proxy

# Create app directory
RUN mkdir -p /usr/src/hellowordapp
WORKDIR /usr/src/hellowordapp

# Install app dependencies
COPY package.json /usr/src/hellowordapp/
RUN npm config set proxy http://web-proxy.il.hpecorp.net:8080
RUN npm config set https-proxy http://web-proxy.il.hpecorp.net:8080
RUN npm install

# Bundle app source
COPY . /usr/src/hellowordapp

EXPOSE 3000

CMD [ "node", "app.js" ]

