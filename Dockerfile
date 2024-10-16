# Use the official Node.js 20 LTS image as the base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock first
COPY package.json yarn.lock ./

# Install the application dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Expose port 3000 to be accessible from outside the container
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]