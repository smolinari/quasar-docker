FROM  node:alpine

USER root
RUN npm install -g @quasar/cli && \
    npm install -g @vue/cli && \
    npm install -g @vue/cli-init 

RUN mkdir /home/node/app

# VOLUME [ "/home/node/app" ]
WORKDIR /home/node/app

CMD /bin/sh
