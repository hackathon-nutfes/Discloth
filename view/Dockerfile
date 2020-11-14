FROM node:12.18.1

WORKDIR /app/vue-project

RUN npm install -g @vue/cli

CMD ["/bin/sh"]

COPY ./vue-project/package*.json /app/
RUN npm install
RUN npm install --save axios
RUN npm install --save vuex-persistedstate

