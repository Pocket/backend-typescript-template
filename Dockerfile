FROM node:16-slim@sha256:37aea5137e4df5b0eed1dd4e7cc257aa1f0d7215a13923112e7d7eca4cbc4fe9

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
