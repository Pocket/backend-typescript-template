FROM node:16-slim@sha256:c921eb1ad35760716fff0d5f0f7d9a95a7b64ee8fbe057d6e99e3abfa8682d52

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
