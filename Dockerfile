FROM node:19-slim

# Create app directory
WORKDIR /usr/src/app

# Define necessary EnvVars
ARG CS_CLIENT_ID 
ARG CS_CLIENT_SECRET
ARG CS_ENV

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8888
CMD [ "node", "cs/app.js" ]
