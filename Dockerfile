# Use official Node.js 18 image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

ENV NODE_OPTIONS=--openssl-legacy-provider

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose port (if your app runs on 3000, change if different)
EXPOSE 4200

# Start the app
CMD ["npm", "start"]