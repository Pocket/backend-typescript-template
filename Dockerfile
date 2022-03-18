FROM node:16-slim@sha256:892f5f8620335aacced7f14e7f95c3264ffb9dddfad70bc5b40e9fbbc602bc2a

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
