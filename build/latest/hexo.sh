#!/bin/sh

# Initialize blog if root folder is empty
if [ -z "$(ls)" ]; then
	hexo init ./
	yarn remove hexo-renderer-stylus
	yarn global add hexo-renderer-stylus
fi

# Populate arguments based on environment variables
hexo clean
hexo g
hexo s
rm -rf /home/hexo/.docker/hexo.sh
