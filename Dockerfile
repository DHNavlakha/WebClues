# Using lightweight Node.js base image
FROM node:18-alpine

# Setting the working directory inside the container
WORKDIR /app

# Copying all json packages to install dependencies
COPY package*.json ./

# Installing application dependencies
RUN npm install

# Copying the application code to the container
COPY . .

# Expose port 3000, setting port to listen
EXPOSE 3000

# Specifying the command to run the application
CMD ["node", "app.js"]