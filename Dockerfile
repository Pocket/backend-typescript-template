FROM node:16-slim@sha256:45ba6f2ca2ff66a83c9aea9b34b249219fe8c90174c310d9c906c5a99964e7ad

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
