FROM docker.cke-cs.com/cs:4.17.2
RUN apk update && apk add npm
WORKDIR /usr/src/cs
RUN npm install global-agent
CMD ["node", "-r", "'global-agent/bootstrap'", "--tls-min-v1.0", "./app/dist/index.js"]
