FROM node:16-alpine
WORKDIR /app
ARG NODE_ENV
ENV NODE_ENV $NODE_ENV
COPY package.json /app/
# RUN npm install --global yarn
RUN yarn install
COPY . /app/
# ENV PORT 5000
# EXPOSE $PORT
CMD ["yarn", "start"]