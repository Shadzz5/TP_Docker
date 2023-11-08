FROM node:16

# set working directory
WORKDIR /app/front
# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
# start app
CMD ["npm", "run", "serve", "--", "--port", "8000"]