FROM alpine:latest

# Install required dependencies
RUN apk add --update --no-cache git nodejs npm openssh-client
# Install Hexo command line interface
RUN npm config set unsafe-perm true && \
    npm install hexo-cli hexo-server -g --loglevel=error

RUN addgroup -S hexo -g 1000 && \
    adduser -S hexo -g '' -u 1000 -G hexo && \
    mkdir -p /home/hexo/.hexo && \
    chown hexo:hexo /home/hexo/.hexo

# Copy and run entrypoint script
USER hexo
WORKDIR /home/hexo/.hexo
COPY hexo.sh /home/hexo/.docker/hexo.sh
ENTRYPOINT ["/bin/sh", "-c", "/home/hexo/.docker/hexo.sh"]
