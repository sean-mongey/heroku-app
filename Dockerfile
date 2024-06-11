# Use a specific, stable version of Node.js
FROM node:18-slim

# Set environment variables for Render.com
ENV RENDER=true
ENV NODE_OPTIONS="--openssl-legacy-provider"

# Add container working directory
WORKDIR /app

# Copy npm dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose port and start application
EXPOSE 3000
CMD ["npm", "start"]
