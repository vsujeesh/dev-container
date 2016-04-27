FROM node:5.11-slim

RUN npm install bower -g
RUN npm install webpack -g

ADD scripts /bin

RUN mkdir /inf
RUN mkdir /app
WORKDIR /app

EXPOSE 3000
VOLUME /app

CMD ["container.up"]    # instead of ENTRYPOINT so use can call alternate command
