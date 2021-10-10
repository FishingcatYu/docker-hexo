FROM alpine:latest

# Install required dependencies
RUN apk add --update --no-cache git nodejs yarn openssh-client
# Install Hexo command line interface
RUN yarn config set unsafe-perm true && \ 
    yarn global add hexo-cli -g --loglevel=error

RUN addgroup -S hexo -g 1000 && \
    adduser -S hexo -g '' -u 1000 -G hexo && \
    mkdir -p /home/hexo/.hexo && \
    chown hexo:hexo /home/hexo/.hexo

# Copy and run entrypoint script
USER hexo
WORKDIR /home/hexo/.hexo
COPY hexo.sh /home/hexo/.docker/hexo.sh
COPY package.json /home/hexo/.docker/package.json
ENTRYPOINT ["/bin/sh", "-c", "/home/hexo/.docker/hexo.sh"]
