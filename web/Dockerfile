# Use a smaller, more lightweight base image
FROM node:13-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./

# Install build dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Set the container to run the app on port 3000
EXPOSE 3000

# Run the app with npm start
CMD ["npm", "start"]
