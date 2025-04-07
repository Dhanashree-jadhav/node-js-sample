# Use official Node.js 16 image as base
FROM node:16

# Create app directory inside container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other files
COPY . .

# App runs on port 5000
EXPOSE 5000

# Start the app
CMD ["node", "index.js"]
