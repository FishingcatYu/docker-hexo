FROM alpine:latest

# Install required dependencies
RUN apk add --update --no-cache git nodejs yarn openssh-client
# Install Hexo command line interface
RUN yarn config set unsafe-perm true && \ 
    yarn add hexo-cli  && \
    yarn add hexo-server

RUN addgroup -S hexo -g 1000 && \
    adduser -S hexo -g '' -u 1000 -G hexo && \
    mkdir -p /home/hexo/.hexo && \
    chown hexo:hexo /home/hexo/.hexo

# Copy and run entrypoint script
USER hexo
WORKDIR /home/hexo/.hexo
COPY hexo.sh /home/hexo/.docker/hexo.sh
ENTRYPOINT ["/bin/sh", "-c", "/home/hexo/.docker/hexo.sh"]
