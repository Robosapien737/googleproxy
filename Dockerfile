# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Bundle your application source code into the container
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Define the command to run your application
CMD ["sh main.sh"]
