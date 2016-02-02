FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/hellowordapp
WORKDIR /usr/src/hellowordapp

# Install app dependencies
COPY package.json /usr/src/hellowordapp/
RUN npm install

# Bundle app source
COPY . /usr/src/hellowordapp

EXPOSE 3000

CMD [ "node", "app.js" ]

