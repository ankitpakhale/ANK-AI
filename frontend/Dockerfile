# Frontend Dockerfile

# Use Node.js 16 as the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json for dependency installation
COPY frontend/package.json frontend/package-lock.json ./

# Install necessary dependencies including crypto-related ones
RUN npm install --legacy-peer-deps

# Copy the rest of the frontend code
COPY frontend/ .

# Build the frontend application with Vite
RUN npm run build

# Expose the port for the Vite server (default is 5173)
EXPOSE 5173

# Command to run the development server
CMD ["npm", "run", "dev"]
