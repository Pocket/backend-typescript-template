FROM node:16-slim@sha256:989dc486196a861f0ccc6c72f2eb7a5d3edb3451f2325bb8e81702ae42ed40e1

WORKDIR /usr/src/app

ARG GIT_SHA

COPY . .

ENV NODE_ENV=production
ENV PORT 4242
ENV GIT_SHA=${GIT_SHA}

EXPOSE ${PORT}

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

CMD ["npm", "start"]
