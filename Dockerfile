FROM node:16-slim@sha256:6ee4828a8b4ba725fa1a1799ec755e4cc3dd859eed7a118c5fdef4cda95f56d4

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
