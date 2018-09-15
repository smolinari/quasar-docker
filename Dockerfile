FROM  node:alpine

RUN npm install -g vue-cli && \
    npm install -g quasar-cli && \
    npm install -g @vue/cli && \
    npm install -g @vue/cli-init 

RUN mkdir /home/node/app
USER root

# VOLUME [ "/home/node/app" ]
WORKDIR /home/node/app

CMD /bin/sh