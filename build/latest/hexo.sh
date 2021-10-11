#!/bin/sh

# Initialize blog if root folder is empty
if [ -z "$(ls)" ]; then
	hexo init ./
	#cp /home/hexo/.docker/package.json /home/hexo/.hexo/package.json
	yarn add hexo-deployer-git
	#yarn install hexo-admin
fi

# Populate arguments based on environment variables
hexo cl
hexo g
hexo s
