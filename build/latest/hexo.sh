#!/bin/sh

# Initialize blog if root folder is empty
if [ -z "$(ls)" ]; then
	hexo init ./
	npm install hexo-deployer-git --save
	cp /home/hexo/.docker/package.json /home/hexo/.hexo/package.json
fi

# Populate arguments based on environment variables
hexo cl
hexo g
hexo server -i -s
