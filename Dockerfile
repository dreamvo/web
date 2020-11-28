FROM node:14-alpine

WORKDIR /usr/src/app

COPY . .

RUN yarn

ENV NODE_ENV production

RUN yarn build

ENTRYPOINT ["yarn"]
