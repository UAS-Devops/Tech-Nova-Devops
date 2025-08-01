# Dockerfile for Tech-Nova application
# This Dockerfile sets up a Node.js application with the necessary dependencies and configurations.
# It is designed to work with Docker Compose for orchestration.
#tes
FROM node:18-slim
WORKDIR /app
COPY package*.json ./
COPY . .
RUN rm -rf node_modules
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
