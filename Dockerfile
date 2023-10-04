# Pull the Node.js image
FROM node:18-alpine

# Create a Docker working directory
WORKDIR /app

# Copy package.json and package-lock.json dependencies files 
COPY package*.json ./

# Install dependencies inside Docker
RUN npm install

# Copy the application source code
COPY . .

RUN npm run build

# Use Apache to serve the built React app
FROM httpd:2.4

COPY --from=build /app/build/ /usr/local/apache2/htdocs/

# Optional: Set up custom Apache configurations
# COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf