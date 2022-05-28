FROM node:16-slim@sha256:bd77ceed00cb0edc1cc19ec286a38016e9e9e4dbffaf36827c83b67ffb1451d2

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
