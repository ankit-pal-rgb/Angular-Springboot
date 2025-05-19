# Use official Node.js 18 image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

RUN  export NODE_OPTIONS=--openssl-legacy-provider

# Copy the rest of the app code
COPY . .

# Expose port (if your app runs on 3000, change if different)
EXPOSE 4200

# Start the app
CMD ["npm", "start"]