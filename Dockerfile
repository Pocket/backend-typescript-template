FROM node:16-slim@sha256:34a3b4b7c2704ce52372c42b9b7945b41fe8eb98d74e8af472add0b599b6e1ff

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
