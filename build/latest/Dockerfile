FROM node:lts-alpine

# Install required dependencies
RUN apk add --update --no-cache git openssh-client
# Install Hexo command line interface
RUN yarn config set unsafe-perm true && \ 
    yarn add hexo-cli hexo-server -g --loglevel=error

RUN mkdir -p /home/hexo/.hexo && \
    chown node:node /home/hexo/.hexo

# Copy and run entrypoint script
USER node
WORKDIR /home/hexo/.hexo
COPY hexo.sh /home/hexo/.docker/hexo.sh
ENTRYPOINT ["/bin/sh", "-c", "/home/hexo/.docker/hexo.sh"]
