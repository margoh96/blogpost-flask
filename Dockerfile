# Use an official Node.js runtime as a parent image
FROM node:12

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in package.json
RUN npm install

# Install Python
RUN apt-get update && apt-get install -y python

# Build the app
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]
