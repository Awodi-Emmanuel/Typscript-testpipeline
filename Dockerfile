# Base image
FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source
COPY . .

# Expose the port the app runs on
EXPOSE 4000

# Set environment variables
ENV NODE_ENV production
ENV PORT 4000
ENV DB_HOST postgres
ENV DB_PORT 5432
ENV DB_NAME mydb
ENV DB_USER emmyts
ENV DB_PASS mypass

# Start the app
CMD ["npm", "start"]