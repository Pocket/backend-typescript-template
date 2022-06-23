FROM node:16-slim@sha256:16b5d00e95c0c9fc4b4c5493b3c9c648cb39d96869170585ebfedc0d84ce33ca

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
