FROM node:18-alpine

# Create app directory
RUN mkdir /movie-analyst-api
WORKDIR /movie-analyst-api

# Install app dependencies
COPY package*.json /movie-analyst-api/

RUN npm install

# Bundle app source
COPY . /movie-analyst-api
RUN npm install

ARG PORT

ENV PORT = $PORT

EXPOSE 3000
CMD [ "npm", "start" ]