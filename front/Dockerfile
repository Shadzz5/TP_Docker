FROM node:16

# Set the working directory
WORKDIR /app/front

# Copy package.json
COPY package.json /app/package.json

# Install dependencies
RUN npm install
RUN npm install -g @vue/cli

# Copy the rest of the application code
COPY . .

# Expose the port on which the app runs
EXPOSE 8000

# start app
CMD ["npm", "run", "serve", "--", "--port", "8000"]