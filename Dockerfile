# Use Node.js official image
FROM node:18

# App directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port
EXPOSE 3000

# Run app
CMD ["node", "index.js"]

