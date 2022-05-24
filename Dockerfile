FROM node:16-slim@sha256:e5936cf8dbbb3c0d9d337c0e9f23e56e00b7e62280a8a617d12adfdda8ca9f11

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
