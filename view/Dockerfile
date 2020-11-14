FROM node:12.18.4

WORKDIR /app

RUN npm install -g @vue/cli
RUN npm install 

COPY ./package*.json /app/
CMD ["/bin/sh"]

RUN npm install axios
