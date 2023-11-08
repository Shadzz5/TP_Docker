FROM node:16

RUN mkdir /home/node/app
# Create app directory
WORKDIR /home/node/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]