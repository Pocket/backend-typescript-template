FROM node:16-slim@sha256:8d2c14a1d8a1347fc28bb1b6ad1ef23e7f1b930d2f9fc7411c4c389a8856f098

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
