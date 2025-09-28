# Use an official Node.js runtime as a parent image
FROM node:19-alpine

COPY package.json /app/
COPY src /app/
WORKDIR /app


# Install dependencies
RUN npm install

# Command to run the application
CMD ["node", "server.js"]
