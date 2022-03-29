FROM node:16-slim@sha256:e9b4f4d85a9dbe9da876bbf0a90e943086c57e33db2f2cb6bccb2863fb1a1e6b

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
